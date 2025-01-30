from bqskit import compile, Circuit
from bqskit.compiler.compiler import Compiler
from bqskit.ir.gates import CXGate, TGate, TdgGate
from bqskit.passes.partitioning.quick import QuickPartitioner
from bqskit.ext import bqskit_to_qiskit
from qiskit.quantum_info import Operator
from qiskit import QuantumCircuit
from time import time_ns
import argparse
import os
import json
import numpy as np
from tqdm import tqdm
import subprocess

# begin code from https://github.com/eth-sri/synthetiq/blob/main/notebooks/post_processing/analyzer.py
NON_STANDARD_GATES = {
    "scz": (
        "crz(pi)",
        Operator(np.array([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1j]])),
    ),
    "U": (
        "crx(pi)",
        Operator(
            np.array(
                [
                    [
                        -0.35355339 + 0.35355339j,
                        0.35355339 + 0.35355339j,
                        0.35355339 + 0.35355339j,
                        0.35355339 - 0.35355339j,
                    ],
                    [
                        0.35355339 - 0.35355339j,
                        0.35355339 + 0.35355339j,
                        -0.35355339 - 0.35355339j,
                        0.35355339 - 0.35355339j,
                    ],
                    [
                        0.35355339 - 0.35355339j,
                        -0.35355339 - 0.35355339j,
                        0.35355339 + 0.35355339j,
                        0.35355339 - 0.35355339j,
                    ],
                    [
                        0.35355339 - 0.35355339j,
                        0.35355339 + 0.35355339j,
                        0.35355339 + 0.35355339j,
                        -0.35355339 + 0.35355339j,
                    ],
                ]
            )
        ),
    ),
}


class CircuitS:
    def __init__(self, filename) -> None:
        with open(filename, "r") as file:
            qasm_str = file.read()
        for replace_gate in NON_STANDARD_GATES:
            qasm_str = qasm_str.replace(
                replace_gate, NON_STANDARD_GATES[replace_gate][0]
            )
        self.circuit = QuantumCircuit.from_qasm_str(qasm_str)
        for index, gate in enumerate(self.circuit.data):
            for replace_gate in NON_STANDARD_GATES:
                if (
                    gate[0].name == NON_STANDARD_GATES[replace_gate][0].split("(")[0]
                    and gate[0].params[0] == np.pi
                ):
                    # set gate to the correct gate
                    self.circuit.data[index] = (
                        NON_STANDARD_GATES[replace_gate][1],
                        gate[1],
                        gate[2],
                    )

        self.filename = filename
        self.score = float(os.path.basename(filename).split("-")[0])
        self.t_depth = self.circuit.depth(lambda gate: gate[0].name in ["t", "tdg"])
        self.cx_depth = self.circuit.depth(lambda gate: gate[0].name == "cx")
        self.cx_count = np.count_nonzero(
            np.array([el[0].name for el in self.circuit.data]) == "cx"
        )
        gates_names = np.array([el[0].name for el in self.circuit.data])
        self.t_count = np.count_nonzero(gates_names == "t") + np.count_nonzero(
            gates_names == "tdg"
        )
        self.count = float(os.path.basename(filename).split("-")[1])
        self.gates = len(gates_names)


def main_analysis(circuit_folder):
    t_depth = []
    t_count = []
    gates = []
    best_t_depth_circ = None
    best_t_count_circ = None
    best_cx_depth_circ = None
    for file in tqdm(os.listdir(circuit_folder)):
        circuit = CircuitS(os.path.join(circuit_folder, file))
        t_depth.append(circuit.t_depth)
        gates.append(circuit.gates)
        t_count.append(circuit.t_count)

        # if best_t_depth_circ is None:
        #     best_t_depth_circ = circuit
        # condition2 = circuit.t_depth < best_t_depth_circ.t_depth
        # condition3 = (
        #     circuit.t_depth == best_t_depth_circ.t_depth
        #     and circuit.t_count < best_t_depth_circ.t_count
        # )
        # condition4 = (
        #     circuit.t_depth == best_t_depth_circ.t_depth
        #     and circuit.t_count == best_t_depth_circ.t_count
        #     and circuit.score < best_t_depth_circ.score
        # )
        # if condition2 or condition3 or condition4:
        #     best_t_depth_circ = circuit

        if best_t_count_circ is None:
            best_t_count_circ = circuit
        condition2 = circuit.t_count < best_t_count_circ.t_count
        condition3 = (
            circuit.t_count == best_t_count_circ.t_count
            and circuit.t_depth < best_t_count_circ.t_depth
        )
        condition4 = (
            circuit.t_count == best_t_count_circ.t_count
            and circuit.t_depth == best_t_count_circ.t_depth
            and circuit.score < best_t_count_circ.score
        )
        if condition2 or condition3 or condition4:
            best_t_count_circ = circuit

        # do the same for cx depth
        # if best_cx_depth_circ is None:
        #     best_cx_depth_circ = circuit
        # condition2 = circuit.cx_depth < best_cx_depth_circ.cx_depth
        # condition3 = (
        #     circuit.cx_depth == best_cx_depth_circ.cx_depth
        #     and circuit.cx_count < best_cx_depth_circ.cx_count
        # )
        # condition4 = (
        #     circuit.cx_depth == best_cx_depth_circ.cx_depth
        #     and circuit.cx_count == best_cx_depth_circ.cx_count
        #     and circuit.score < best_cx_depth_circ.score
        # )
        # if condition2 or condition3 or condition4:
        #     best_cx_depth_circ = circuit

    t_depth = np.array(t_depth)
    t_count = np.array(t_count)
    gates = np.array(gates)
    return (
        t_depth,
        t_count,
        gates,
        best_t_count_circ,
        best_t_depth_circ,
        best_cx_depth_circ,
    )


# end code from https://github.com/eth-sri/synthetiq/blob/main/notebooks/post_processing/analyzer.py


def partition(circuit: Circuit, block_size):
    compiler = Compiler()
    circuit = compiler.compile(
        circuit,
        [QuickPartitioner(block_size)],
    )
    unitaries = []
    for block in circuit:
        block_circuit = block.gate._circuit
        block_circuit = bqskit_to_qiskit(block_circuit)
        unitaries.append(Operator(block_circuit).data)
    return unitaries


def synthetiq_synth(path_to_synthetiq, unitary, num_circuits, epsilon, threads):
    temp_circ = f"circ_{np.random.randint(0, 1000000)}"
    num_qubits = int(np.log2(unitary.shape[0]))
    with open(f"{path_to_synthetiq}/data/input/{temp_circ}.txt", "w") as f:
        f.write(f"{temp_circ}\n")
        f.write(f"{num_qubits}\n")
        for row in unitary:
            for val in row:
                f.write(f"({val.real},{val.imag}) ")
            f.write("\n")
        for row in unitary:
            for val in row:
                f.write(f"1 ")
            f.write("\n")

    directory = f"{path_to_synthetiq}/data/output/{temp_circ}"

    command = (
        f"./bin/main {temp_circ}.txt -c {num_circuits} -eps {epsilon} -h {threads}"
    )
    command_list = command.split(" ")
    proc = subprocess.Popen(command_list, cwd=path_to_synthetiq)
    proc.wait()

    (
        t_depth,
        t_count,
        gates,
        best_t_count_circ,
        best_t_depth_circ,
        best_cx_depth_circ,
    ) = main_analysis(directory)

    return best_t_count_circ.circuit


def synthetiq_optimize(
    path_to_synthetiq,
    circuit: Circuit,
    block_size,
    num_circuits,
    error_threshold,
    threads,
):
    partition_unitaries = partition(circuit, block_size)
    result_circ = None
    epsilon = error_threshold / len(partition_unitaries)
    for unitary in partition_unitaries:
        if result_circ is None:
            result_circ = synthetiq_synth(
                path_to_synthetiq, unitary, num_circuits, epsilon, threads
            )
        else:
            result_circ = result_circ.compose(
                synthetiq_synth(
                    path_to_synthetiq, unitary, num_circuits, epsilon, threads
                )
            )
    return result_circ, epsilon


def t_count_bqskit(circuit: Circuit):
    return (circuit.gate_counts[TGate()] if TGate() in circuit.gate_counts else 0) + (
        circuit.gate_counts[TdgGate()] if TdgGate() in circuit.gate_counts else 0
    )


def t_count_qiskit(circuit):
    count_ops = circuit.count_ops()
    return count_ops.get("t", 0) + count_ops.get("tdg", 0)


def run(args: dict):
    cluster = args["cluster"]
    process = args["process"]
    path_to_synthetiq = args["path_to_synthetiq"]
    input_file = args["circuit_file"]
    block_size = args["block_size"]
    error_threshold = args["error_threshold"]
    num_circuits = args["num_circuits"]
    threads = args["threads"]

    circuit_id = input_file[input_file.rfind("/") + 1 :].replace(".qasm", "")

    out_dir = f"results_{circuit_id}"
    os.makedirs(out_dir, exist_ok=True)

    result = {}
    circuit = Circuit.from_file(input_file)
    result["original_total"] = circuit.num_operations
    result["original_2q"] = (
        circuit.gate_counts[CXGate()] if CXGate() in circuit.gate_counts else 0
    )
    result["original_t"] = t_count_bqskit(circuit)
    start = time_ns()

    circuit, epsilon = synthetiq_optimize(
        path_to_synthetiq, circuit, block_size, num_circuits, error_threshold, threads
    )

    end = time_ns()
    result["optimized_total"] = circuit.size()
    result["optimized_2q"] = circuit.num_nonlocal_gates()
    result["optimized_t"] = t_count_qiskit(circuit)
    result["total_time"] = (end - start) / 1000000000

    output_file = f"{out_dir}/optimized_{cluster}_{process}_{circuit_id}.qasm"
    circuit.qasm(filename=output_file)

    result.update(args)
    result.update(
        {
            "circuit_id": circuit_id,
            "out_dir": out_dir,
            "synthesis_epsilon": epsilon,
            "method": "synthetiq",
        }
    )

    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="BQSKit-style Optimizer based on Synthetiq",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    parser.add_argument("--cluster", type=str, default="none")
    parser.add_argument("--process", type=str, default="none")
    parser.add_argument("--path_to_synthetiq", type=str, required=True)
    parser.add_argument("--circuit_file", type=str, required=True)
    parser.add_argument("--block_size", type=int, required=True)
    parser.add_argument("--error_threshold", type=float, required=True)
    parser.add_argument("--num_circuits", type=int, required=True)
    parser.add_argument("--threads", type=int, required=True)

    args = parser.parse_args()

    result = run(vars(args))

    with open(
        f"{result['out_dir']}/results_{args.cluster}_{args.process}.json",
        "w",
    ) as f:
        json.dump(result, f, indent=4)
