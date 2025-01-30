package qoptimizer.parser;

import qoptimizer.circuit.CircuitDAG;
import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import qasm.Qasm3Lexer;
import qasm.Qasm3Parser;

public class CircuitParser {

    public static CircuitDAG qasmToDag(String qasm) {
        CircuitDAGVisitor visitor = new CircuitDAGVisitor(HashBiMap.create());
        return qasmToDagHelper(qasm, visitor);
    }

    public static CircuitDAG qasmToDag(String qasm, BiMap<String, String> qubitRenameMap) {
        CircuitDAGVisitor visitor = new CircuitDAGVisitor(qubitRenameMap);
        return qasmToDagHelper(qasm, visitor);
    }

    private static CircuitDAG qasmToDagHelper(String qasm, CircuitDAGVisitor visitor) {
        if (qasm.equals(";")) {
            return new CircuitDAG();
        }
        Qasm3Lexer lexer = new Qasm3Lexer(CharStreams.fromString(qasm));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        Qasm3Parser parser = new Qasm3Parser(tokens);
        ParseTree tree = parser.program();

        CircuitDAG result = visitor.visit(tree);
        return result;
    }

    public static String dagToQasm(CircuitDAG circuit) {
        return circuit.toQASM();
    }
}
