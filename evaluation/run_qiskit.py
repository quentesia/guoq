from qiskit import QuantumCircuit
from qiskit import transpile
from qiskit.qasm2 import dump
from time import time_ns
import argparse
import os
import json
from common import GATE_SET_DICT


def get_t_count(circuit):
    count_ops = circuit.count_ops()
    return count_ops.get("t", 0) + count_ops.get("tdg", 0)


def run(args: dict):
    cluster = args["cluster"]
    process = args["process"]
    input_file = args["circuit_file"]
    optimization_level = args["optimization_level"]
    gate_set = args["gate_set"]

    circuit_id = input_file[input_file.rfind("/") + 1 :].replace(".qasm", "")

    out_dir = f"results_{circuit_id}"
    os.makedirs(out_dir, exist_ok=True)

    result = {}
    circuit = QuantumCircuit.from_qasm_file(input_file)
    result["original_total"] = circuit.size()
    result["original_2q"] = circuit.num_nonlocal_gates()
    result["original_t"] = get_t_count(circuit)
    start = time_ns()

    compiled = transpile(
        circuit,
        basis_gates=GATE_SET_DICT[gate_set],
        coupling_map=None,
        optimization_level=optimization_level,
    )

    end = time_ns()
    result["optimized_total"] = compiled.size()
    result["optimized_2q"] = compiled.num_nonlocal_gates()
    result["optimized_t"] = get_t_count(compiled)
    result["total_time"] = (end - start) / 1000000000

    output_file = f"{out_dir}/optimized_{cluster}_{process}_{circuit_id}.qasm"
    dump(compiled, output_file)

    result.update(args)
    result.update(
        {
            "circuit_id": circuit_id,
            "out_dir": out_dir,
            "method": "qiskit",
        }
    )

    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run Qiskit", formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )

    parser.add_argument("--cluster", type=str, default="none")
    parser.add_argument("--process", type=str, default="none")
    parser.add_argument("--circuit_file", type=str, required=True)
    parser.add_argument("--optimization_level", type=int, required=True)
    parser.add_argument("--gate_set", type=str, required=True)

    args = parser.parse_args()

    result = run(vars(args))

    with open(
        f"{result['out_dir']}/results_{args.cluster}_{args.process}.json",
        "w",
    ) as f:
        json.dump(result, f, indent=4)
