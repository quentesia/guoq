package qoptimizer;

import org.jgrapht.Graphs;
import org.jgrapht.alg.lca.NaiveLCAFinder;
import qoptimizer.circuit.CircuitDAG;
import qoptimizer.circuit.Edge;
import qoptimizer.circuit.Node;
import qoptimizer.parser.CircuitParser;

import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Optional;
import java.util.Random;

public class RandomPartition implements IPartitionPicker {
    private Random generator;
    private int MAX_PARTITION_QUBITS;

    public RandomPartition(Random rand, int maxPartitionQubits) {
        this.generator = rand;
        this.MAX_PARTITION_QUBITS = maxPartitionQubits;
    }

    public <E> Optional<E> getRandom(Collection<E> e) {
        return e.stream()
                .skip((int) (e.size() * this.generator.nextDouble(0, 1)))
                .findFirst();
    }

    private Node getRandomGate(CircuitDAG circuit) {
        while (true) {
            Node randomNode = getRandom(circuit.getDag().vertexSet()).get(); // shouldn't ever be None since vertex set shouldn't be empty
            if (randomNode.isGate()) {
                return randomNode;
            }
        }
    }

    public void addChildrenGreedy(CircuitDAG circuit, CircuitDAG partition, LinkedList<Node> frontier, NaiveLCAFinder lcaP, HashSet<Node> roots) {
        while (!frontier.isEmpty()) {
            Node current = frontier.pop();
            if (partition.contains(current)) {
                continue;
            }
            if (!current.isCX()) {
                if (partition.addGateOk(circuit, current, MAX_PARTITION_QUBITS, true)) {
                    partition.addGate(current, roots, true);
                    frontier.addAll(Graphs.successorListOf(circuit.getDag(), current));
                }
            } else {
                String newQubit = partition.wouldAddNewQubit(current, MAX_PARTITION_QUBITS);
                if (newQubit != null) {
                    if (partition.getQubits().size() == MAX_PARTITION_QUBITS) {
                        continue;
                    }
                    boolean skip = false;
                    for (Node n : new LinkedList<>(frontier)) {
                        if (current == n) {
                            continue;
                        }
                        if (n == lcaP.getLCA(current, n)) {
                            frontier.add(current);
                            skip = true;
                            break;
                        }
                    }
                    if (!skip) {
                        partition.addGate(current, roots, true);
                        frontier.addAll(Graphs.successorListOf(circuit.getDag(), current));
                    }
                } else {
                    if (partition.addGateOk(circuit, current, MAX_PARTITION_QUBITS, true)) {
                        partition.addGate(current, roots, true);
                        frontier.addAll(Graphs.successorListOf(circuit.getDag(), current));
                    }
                }
            }
        }
    }

    public void addParentsGreedy(CircuitDAG circuit, CircuitDAG partition, LinkedList<Node> frontier, NaiveLCAFinder lcaP, HashSet<Node> roots) {
        while (!frontier.isEmpty()) {
            Node current = frontier.pop();
            if (partition.contains(current)) {
                continue;
            }
            if (!current.isCX()) {
                if (partition.addGateOk(circuit, current, MAX_PARTITION_QUBITS, false)) {
                    partition.addGate(current, roots, false);
                    frontier.addAll(Graphs.predecessorListOf(circuit.getDag(), current));
                }
            } else {
                String newQubit = partition.wouldAddNewQubit(current, MAX_PARTITION_QUBITS);
                if (newQubit != null) {
                    if (partition.getQubits().size() == MAX_PARTITION_QUBITS) {
                        continue;
                    }
                    boolean skip = false;
                    for (Node n : new LinkedList<>(frontier)) {
                        if (current == n) {
                            continue;
                        }
                        if (current == lcaP.getLCA(current, n)) {
                            frontier.add(current);
                            skip = true;
                            break;
                        }
                    }
                    if (!skip) {
                        partition.addGate(current, roots, false);
                        frontier.addAll(Graphs.predecessorListOf(circuit.getDag(), current));
                    }
                } else {
                    if (partition.addGateOk(circuit, current, MAX_PARTITION_QUBITS, false)) {
                        partition.addGate(current, roots, false);
                        frontier.addAll(Graphs.predecessorListOf(circuit.getDag(), current));
                    }
                }
            }
        }
    }

    @Override
    public CircuitDAG getPartition(CircuitDAG circuit) {
        CircuitDAG partition = new CircuitDAG();

        HashSet<Node> roots = new HashSet<>();
        Node randomGate = getRandomGate(circuit);
        partition.addGate(randomGate, roots, true);
        LinkedList<Node> frontier = new LinkedList<>();
        frontier.addAll(Graphs.successorListOf(circuit.getDag(), randomGate));
        NaiveLCAFinder<Node, Edge> lcaP = new NaiveLCAFinder<>(circuit.getDag());
        addChildrenGreedy(circuit, partition, frontier, lcaP, roots);
        for (Node root : roots) {
            frontier.addAll(Graphs.predecessorListOf(circuit.getDag(), root));
        }
        addParentsGreedy(circuit, partition, frontier, lcaP, roots);

        partition.addAllPartition();
        partition.setQasmHeader(rewriteHeader(circuit.getQasmHeader(), partition.getQubits().size()));

        return partition;
    }

    // adjust qreg in header
    private String rewriteHeader(String header, int numQubits) {
        int qregIndex = header.indexOf("qreg");
        return header.substring(0, qregIndex) + "qreg q[%s];\n".formatted(numQubits);
    }
}
