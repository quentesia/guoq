from bqskit import compile, Circuit, MachineModel
from bqskit.compiler.compiler import Compiler
from bqskit.passes.partitioning.quick import QuickPartitioner
from bqskit.ir.gates import (
    CXGate,
    RXXGate,
    U1Gate,
    U2Gate,
    U3Gate,
    RZGate,
    SXGate,
    XGate,
    HGate,
    RXGate,
    RYGate,
    TGate,
    TdgGate,
    SGate,
    SdgGate,
)
from time import time_ns
import argparse
import os
import json
from common import GATE_SET_DICT

GATE_DICT = {
    "u1": U1Gate(),
    "u2": U2Gate(),
    "u3": U3Gate(),
    "rz": RZGate(),
    "sx": SXGate(),
    "x": XGate(),
    "h": HGate(),
    "rx": RXGate(),
    "ry": RYGate(),
    "cx": CXGate(),
    "rxx": RXXGate(),
    "t": TGate(),
    "tdg": TdgGate(),
    "s": SGate(),
    "sdg": SdgGate(),
}


def count_2q_gates(circuit):
    cx_count = circuit.gate_counts[CXGate()] if CXGate() in circuit.gate_counts else 0
    rxx_count = (
        circuit.gate_counts[RXXGate()] if RXXGate() in circuit.gate_counts else 0
    )
    return cx_count + rxx_count


def count_t_gates(circuit):
    t_count = circuit.gate_counts[TGate()] if TGate() in circuit.gate_counts else 0
    tdg_count = (
        circuit.gate_counts[TdgGate()] if TdgGate() in circuit.gate_counts else 0
    )
    return t_count + tdg_count


def run(args: dict):
    cluster = args["cluster"]
    process = args["process"]
    input_file = args["circuit_file"]
    block_size = args["block_size"]
    optimization_level = args["optimization_level"]
    error_threshold = args["error_threshold"]
    gate_set = args["gate_set"]

    circuit_id = input_file[input_file.rfind("/") + 1 :].replace(".qasm", "")

    out_dir = f"results_{circuit_id}"
    os.makedirs(out_dir, exist_ok=True)

    result = {}
    circuit = Circuit.from_file(input_file)
    result["original_total"] = circuit.num_operations
    result["original_2q"] = count_2q_gates(circuit)
    result["original_t"] = count_t_gates(circuit)

    model = MachineModel(
        circuit.num_qudits,
        gate_set=set([GATE_DICT[g] for g in GATE_SET_DICT[gate_set]]),
    )
    compiler = Compiler()
    temp_circ = compiler.compile(
        circuit,
        [QuickPartitioner(block_size)],
    )
    num_partitions = 0
    for _ in temp_circ:
        num_partitions += 1
    epsilon = error_threshold / num_partitions

    start = time_ns()

    circuit = compile(
        circuit,
        optimization_level=optimization_level,
        synthesis_epsilon=epsilon,
        error_threshold=error_threshold,
        max_synthesis_size=block_size,
        model=model,
    )

    end = time_ns()
    result["optimized_total"] = circuit.num_operations
    result["optimized_2q"] = count_2q_gates(circuit)
    result["optimized_t"] = count_t_gates(circuit)
    result["total_time"] = (end - start) / 1000000000

    output_file = f"{out_dir}/optimized_{cluster}_{process}_{circuit_id}.qasm"
    circuit.save(output_file)

    result.update(args)
    result.update(
        {
            "circuit_id": circuit_id,
            "out_dir": out_dir,
            "synthesis_epsilon": epsilon,
            "method": "bqskit",
        }
    )

    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run BQSKit", formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )

    parser.add_argument("--cluster", type=str, default="none")
    parser.add_argument("--process", type=str, default="none")
    parser.add_argument("--circuit_file", type=str, required=True)
    parser.add_argument("--gate_set", type=str, required=True)
    parser.add_argument("--block_size", type=int, required=True)
    parser.add_argument("--optimization_level", type=int, required=True)
    parser.add_argument("--error_threshold", type=float, required=True)

    args = parser.parse_args()

    result = run(vars(args))

    with open(
        f"{result['out_dir']}/results_{args.cluster}_{args.process}.json",
        "w",
    ) as f:
        json.dump(result, f, indent=4)
