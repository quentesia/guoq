package qoptimizer.circuit;

import lombok.Getter;

import java.util.List;

public class EquivalenceClass {

    @Getter
    private List<ConstrainedCircuit> circuits;
    @Getter
    private ConstrainedCircuit representative;

    public EquivalenceClass(List<ConstrainedCircuit> circuits, ConstrainedCircuit representative) {
        this.circuits = circuits;
        this.representative = representative;
    }

    public void add(ConstrainedCircuit cc) {
        this.circuits.add(cc);
    }

    public int size() {
        return this.circuits.size();
    }
}
