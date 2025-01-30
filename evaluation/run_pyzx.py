import pyzx as zx
from qiskit import QuantumCircuit
from qiskit.circuit.equivalence_library import StandardEquivalenceLibrary as sel
from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import (
    BasisTranslator,
    UnrollCustomDefinitions,
)
from time import time_ns
import argparse
import os
import json


def t_count_qiskit(circuit):
    count_ops = circuit.count_ops()
    return count_ops.get("t", 0) + count_ops.get("tdg", 0)


def run(args: dict):
    cluster = args["cluster"]
    process = args["process"]
    input_file = args["circuit_file"]

    circuit_id = input_file[input_file.rfind("/") + 1 :].replace(".qasm", "")

    out_dir = f"results_{circuit_id}"
    os.makedirs(out_dir, exist_ok=True)

    result = {}
    circuit = zx.Circuit.from_qasm_file(input_file)
    stats = circuit.stats_dict()
    result["original_total"] = stats["gates"]
    result["original_2q"] = stats["twoqubit"]
    result["original_t"] = stats["tcount"]

    start = time_ns()

    circuit_graph = circuit.to_graph()
    # zx.simplify.full_reduce(circuit_graph)
    # circuit = zx.extract_circuit(circuit_graph).split_phase_gates()
    circuit_graph = zx.teleport_reduce(circuit_graph)
    circuit = zx.Circuit.from_graph(circuit_graph)
    circuit_qiskit = QuantumCircuit.from_qasm_str(circuit.to_qasm())
    gate_set = ["h", "cx", "t", "tdg", "s", "sdg", "x"]
    pm = PassManager(
        [
            UnrollCustomDefinitions(equivalence_library=sel, basis_gates=gate_set),
            BasisTranslator(sel, gate_set),
        ]
    )
    circuit_qiskit = pm.run(circuit_qiskit)

    end = time_ns()
    stats = circuit.stats_dict()
    result["optimized_total"] = stats["gates"]
    result["optimized_2q"] = stats["twoqubit"]
    result["optimized_t"] = stats["tcount"]
    result["optimized_total_cliffordt"] = circuit_qiskit.size()
    result["optimized_2q_cliffordt"] = circuit_qiskit.num_nonlocal_gates()
    result["optimized_t_cliffordt"] = t_count_qiskit(circuit_qiskit)
    result["total_time"] = (end - start) / 1000000000

    output_file = f"{out_dir}/optimized_{cluster}_{process}_{circuit_id}.qasm"
    circuit_qiskit.qasm(filename=output_file)

    result.update(args)
    result.update(
        {
            "circuit_id": circuit_id,
            "out_dir": out_dir,
            "method": "pyzx",
        }
    )

    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run PyZX", formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )

    parser.add_argument("--cluster", type=str, default="none")
    parser.add_argument("--process", type=str, default="none")
    parser.add_argument("--circuit_file", type=str, required=True)

    args = parser.parse_args()

    result = run(vars(args))

    with open(
        f"{result['out_dir']}/results_{args.cluster}_{args.process}.json",
        "w",
    ) as f:
        json.dump(result, f, indent=4)
