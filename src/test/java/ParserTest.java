import qoptimizer.circuit.CircuitDAG;
import com.google.common.collect.HashBiMap;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.junit.jupiter.api.Test;
import qoptimizer.parser.CircuitDAGVisitor;
import qasm.Qasm3Lexer;
import qasm.Qasm3Parser;

public class ParserTest {
    @Test
    public void test() {
        String toParse =
                "u2(0,pi/2) q[4];\n" +
                        "cx q[3], q[4];\n" +
                        "u1(-pi/4) q[4];\n" +
                        "cx q[2], q[4];\n" +
                        "u1(pi) q[4];\n" +
                        "cx q[3], q[4];";

        Qasm3Lexer lexer = new Qasm3Lexer(CharStreams.fromString(toParse));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        Qasm3Parser parser = new Qasm3Parser(tokens);
        ParseTree tree = parser.program();

        CircuitDAGVisitor visitor = new CircuitDAGVisitor(HashBiMap.create());
        CircuitDAG res = visitor.visit(tree);

        System.out.println(res.toQASM());
    }
}
