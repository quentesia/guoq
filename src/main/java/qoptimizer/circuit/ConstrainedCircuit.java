package qoptimizer.circuit;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

public class ConstrainedCircuit {

    @Getter
    @Setter
    private Circuit circuit;
    @Getter
    private List<Integer> constraint;

    public ConstrainedCircuit(Circuit circuit, List<Integer> constraint) {
        this.circuit = circuit;
        this.constraint = constraint;
    }

    @Override
    public String toString() {
        return "qoptimizer.circuit.ConstrainedCircuit{" +
                "circuit=" + circuit +
                '}';
    }
}
