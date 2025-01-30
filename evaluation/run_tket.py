# https://tket.quantinuum.com/user-manual/manual_compiler.html#guidance-for-combining-passes

from pytket.qasm import (
    circuit_from_qasm,
    circuit_from_qasm_str,
    circuit_to_qasm,
    circuit_to_qasm_str,
)
from pytket.passes.auto_rebase import auto_rebase_pass
from pytket.passes import SequencePass
from pytket.passes import (
    FullPeepholeOptimise,
    RemoveRedundancies,
    RebaseCustom,
    DecomposeBoxes,
)
from pytket.circuit import OpType
from qiskit import QuantumCircuit
from qiskit.qasm2 import dump
from time import time_ns
import argparse
import os
import json
from common import GATE_SET_DICT

GATE_DICT = {
    "u1": OpType.U1,
    "u2": OpType.U2,
    "u3": OpType.U3,
    "cx": OpType.CX,
    "rz": OpType.Rz,
    "sx": OpType.SX,
    "x": OpType.X,
    "h": OpType.H,
    "rx": OpType.Rx,
    "ry": OpType.Ry,
    # no rxx gate!
}


def run(args: dict):
    cluster = args["cluster"]
    process = args["process"]
    input_file = args["circuit_file"]
    gate_set = args["gate_set"]

    circuit_id = input_file[input_file.rfind("/") + 1 :].replace(".qasm", "")

    out_dir = f"results_{circuit_id}"
    os.makedirs(out_dir, exist_ok=True)

    result = {}
    circuit = QuantumCircuit.from_qasm_file(input_file)
    result["original_total"] = circuit.size()
    result["original_2q"] = circuit.num_nonlocal_gates()
    circuit = circuit_from_qasm(input_file)

    seq_pass = SequencePass(
        [
            DecomposeBoxes(),
            FullPeepholeOptimise(),
            RemoveRedundancies(),
            auto_rebase_pass(
                set([GATE_DICT[g] for g in GATE_SET_DICT[gate_set]]), allow_swaps=True
            ),
        ]
    )

    start = time_ns()

    seq_pass.apply(circuit)

    end = time_ns()
    compiled = QuantumCircuit.from_qasm_str(circuit_to_qasm_str(circuit))
    result["optimized_total"] = compiled.size()
    result["optimized_2q"] = compiled.num_nonlocal_gates()
    result["total_time"] = (end - start) / 1000000000

    output_file = f"{out_dir}/optimized_{cluster}_{process}_{circuit_id}.qasm"
    dump(compiled, output_file)

    result.update(args)
    result.update(
        {
            "circuit_id": circuit_id,
            "out_dir": out_dir,
            "method": "tket",
        }
    )

    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run TKET", formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )

    parser.add_argument("--cluster", type=str, default="none")
    parser.add_argument("--process", type=str, default="none")
    parser.add_argument("--circuit_file", type=str, required=True)
    parser.add_argument("--gate_set", type=str, required=True)

    args = parser.parse_args()

    result = run(vars(args))

    with open(
        f"{result['out_dir']}/results_{args.cluster}_{args.process}.json",
        "w",
    ) as f:
        json.dump(result, f, indent=4)
