package qoptimizer.circuit;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.math3.util.Pair;

import java.util.ArrayList;
import java.util.List;

public class OptCircuit {

    @Getter
    @Setter
    private CircuitDAG circuit;
    @Getter
    private List<Pair<String, Integer>> rulesApplied;
    @Getter
    @Setter
    private long timeToBest;
    @Getter
    private long createTime;

    public OptCircuit(CircuitDAG circuit, List<Pair<String, Integer>> rulesApplied, long createTime, long timeToBest) {
        this.circuit = circuit;
        this.rulesApplied = rulesApplied;
        this.createTime = createTime;
        this.timeToBest = timeToBest;
    }

    public OptCircuit(CircuitDAG circuit, OptCircuit previous, String rule, long createTime) {
        this.circuit = circuit;
        this.rulesApplied = new ArrayList<>(previous.getRulesApplied());
        this.rulesApplied.add(new Pair<>(rule, circuit.totalGateCount()));
        this.createTime = createTime;
    }

    public long getMostRecentNumSizePreserveRules() {
        return rulesApplied.stream().filter(pair -> pair.getSecond() == circuit.totalGateCount()).count();
    }

    public int countRulesApplications(String rule) {
        return rulesApplied.stream().filter(pair -> pair.getFirst().equals(rule)).mapToInt(e -> 1).sum();
    }

    public int countResynthApplications() {
        return rulesApplied.stream().filter(pair -> pair.getFirst().contains("resynthesized")).mapToInt(e -> 1).sum();
    }
}
