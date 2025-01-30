package qoptimizer.circuit;

import lombok.Getter;
import lombok.Setter;

import java.util.Objects;

public class Edge {
    public enum Label {
        CONTROL,
        CONTROL2,
        TARGET,
        NONE,
        PARAMETER
    }

    @Getter
    private Label sourceLabel;
    @Getter
    private Label targetLabel;
    @Getter
    @Setter
    private String qubit;

    public Edge(Label sourceLabel, Label targetLabel, String qubit) {
        this.sourceLabel = sourceLabel;
        this.targetLabel = targetLabel;
        this.qubit = qubit;
    }

    public boolean sameSourceTargetLabels(Edge e) {
        return this.sourceLabel.equals(e.getSourceLabel()) && this.targetLabel.equals(e.getTargetLabel());
    }

    public int hash() {
        return Objects.hash(sourceLabel, targetLabel, qubit);
    }

    @Override
    public String toString() {
        return "" + sourceLabel + "," + targetLabel + "," + qubit;
    }
}
