from concurrent.futures import ProcessPoolExecutor
from pathlib import Path
from pytket.extensions.qiskit import AerBackend
from pytket.qasm import circuit_from_qasm, circuit_to_qasm_str
from pytket.predicates import CompilationUnit

def run_circ(args):
    str_circ, out_dir = args
    opt = AerBackend().default_compilation_pass(optimisation_level=3)
    name     = Path(str_circ).stem
    out_file = Path(out_dir)/f"{name}_ibmn_tket.qasm"
    circ = circuit_from_qasm(str_circ)
    cu   = CompilationUnit(circ)
    opt.apply(cu)
    with open(out_file, "w") as f:
        f.write(circuit_to_qasm_str(cu.circuit))
    print(f"Finished {name}")

if __name__=="__main__":
    benches  = ["ibm", "ion", "nam_t_tdg", "nam_rz"]
    base_out = Path("../results/tket_results")
    tasks    = []

    for b in benches:
        in_dir  = Path("benchmarks")/b
        out_dir = base_out/b
        out_dir.mkdir(parents=True, exist_ok=True)

        for p in in_dir.rglob("*.qasm"):
            out_file = out_dir / f"{p.stem}_ibmn_tket.qasm"
            # only add it if we haven’t produced it yet
            if not out_file.exists():
                tasks.append((str(p), str(out_dir)))

    print(f"Total to do: {len(tasks)}")

    with ProcessPoolExecutor(max_workers=13) as ex:
        list(ex.map(run_circ, tasks))