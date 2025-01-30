package qoptimizer.parser;

import com.google.common.collect.BiMap;
import lombok.Getter;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.misc.Interval;
import qasm.Qasm3Parser;
import qasm.Qasm3ParserBaseVisitor;
import qoptimizer.circuit.CircuitDAG;
import qoptimizer.circuit.Node;

public class CircuitDAGVisitor extends Qasm3ParserBaseVisitor<CircuitDAG> {

    @Getter
    private CircuitDAG circuitDAG;
    private BiMap<String, String> qubitRenameMap; // partition name : original name

    public CircuitDAGVisitor(BiMap<String, String> qubitRenameMap) {
        this.qubitRenameMap = qubitRenameMap;
    }

    @Override
    public CircuitDAG visitProgram(Qasm3Parser.ProgramContext ctx) {
        circuitDAG = new CircuitDAG();
        visitChildren(ctx);
        circuitDAG.addAllPartition();
        return circuitDAG;
    }

    @Override
    public CircuitDAG visitVersion(Qasm3Parser.VersionContext ctx) {
        circuitDAG.setQasmHeader(getText(ctx) + "\n");
        return visitChildren(ctx);
    }

    @Override
    public CircuitDAG visitIncludeStatement(Qasm3Parser.IncludeStatementContext ctx) {
        circuitDAG.setQasmHeader(circuitDAG.getQasmHeader() + getText(ctx) + "\n");
        return visitChildren(ctx);
    }

    @Override
    public CircuitDAG visitOldStyleDeclarationStatement(Qasm3Parser.OldStyleDeclarationStatementContext ctx) {
        circuitDAG.setQasmHeader(circuitDAG.getQasmHeader() + getText(ctx) + "\n");
        return visitChildren(ctx);
    }

    @Override
    public CircuitDAG visitGateCallStatement(Qasm3Parser.GateCallStatementContext ctx) {
        NodeVisitor visitor = new NodeVisitor(qubitRenameMap);
        Node node = visitor.visitGateCallStatement(ctx);
        if (node != null) {
            circuitDAG.addGate(node);
        }
        return visitChildren(ctx);
    }

    // https://stackoverflow.com/questions/26524302/how-to-preserve-whitespace-when-we-use-text-attribute-in-antlr4
    private String getText(ParserRuleContext context) {
        if (context.start == null || context.stop == null || context.start.getStartIndex() < 0 || context.stop.getStopIndex() < 0)
            return context.getText();

        return context.start.getInputStream().getText(Interval.of(context.start.getStartIndex(), context.stop.getStopIndex()));
    }

}



