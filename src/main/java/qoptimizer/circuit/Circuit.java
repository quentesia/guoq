package qoptimizer.circuit;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

public class Circuit {
    @Getter
    @Setter
    private List<String> qubits;
    @Getter
    @Setter
    private List<String> usedQubits;
    @Getter
    @Setter
    private List<PathSum> pathSum;
    @Getter
    @Setter
    private List<String> qasm;

    public Circuit(List<String> qubits, List<PathSum> pathSum, List<String> qasm) {
        this.qubits = qubits;
        this.usedQubits = new ArrayList<>();
        this.pathSum = pathSum;
        this.qasm = qasm;
    }

    public String getQasmString() {
        return String.join("; ", qasm).concat(";");
    }

    public String getQasmStringDropFirst() {
        return String.join("; ", qasm.subList(1, qasm.size())).concat(";");
    }

    public boolean hasSymb() {
        return qasm.contains(PathSum.SYMB);
    }

    public boolean hasQubit(String qubit) {
        return usedQubits.contains(qubit);
    }

    public boolean hasQubitGreaterThan(int max) {
        for (String qubit : usedQubits) {
            if (Integer.valueOf(qubit.replace("q", "")) >= max) {
                return true;
            }
        }
        return false;
    }

    public void addQubit(String qubit) {
        this.usedQubits.add(qubit);
    }

    public String getLastOp() {
        if (!qasm.isEmpty()) {
            return qasm.get(qasm.size() - 1);
        } else {
            return "";
        }
    }

    public boolean hasCXH() {
        for (String op : qasm) {
            if (op.contains("cx") || op.contains("h ") || op.contains("cz") || op.contains("rx") || op.contains("ry") || op.contains("rxx") || op.contains("sx")) {
                return true;
            }
        }
        return false;
    }

    public int getSize() {
        return this.qasm.size();
    }

    @Override
    public String toString() {
        return "qoptimizer.circuit.Circuit [qubits=" + qubits + ", usedQubits=" + usedQubits + ", qasm=" + getQasmString() + ", pathSum=" + pathSum + "]";
    }
}
