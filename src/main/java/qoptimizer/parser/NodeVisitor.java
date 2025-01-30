package qoptimizer.parser;

import com.google.common.collect.BiMap;
import qasm.Qasm3Parser;
import qasm.Qasm3ParserBaseVisitor;
import qoptimizer.ast.BinOp;
import qoptimizer.ast.Constant;
import qoptimizer.ast.Expr;
import qoptimizer.ast.Real;
import qoptimizer.ast.Symbol;
import qoptimizer.ast.UnOp;
import qoptimizer.circuit.Node;

import java.util.ArrayList;
import java.util.List;

import static qoptimizer.circuit.Node.Type.GATE;

public class NodeVisitor extends Qasm3ParserBaseVisitor<Node> {

    private BiMap<String, String> qubitRenameMap; // partition name : original name

    public NodeVisitor(BiMap<String, String> qubitRenameMap) {
        this.qubitRenameMap = qubitRenameMap;
    }

    @Override
    public Node visitGateCallStatement(Qasm3Parser.GateCallStatementContext ctx) {
        String gate = ctx.Identifier().getText();

        ExprVisitor visitor = new ExprVisitor();
        List<Expr> angles = ctx.expressionList() != null ? visitor.visitExpressionList(ctx.expressionList()) : null;

        List<Expr> evaluatedAngles = new ArrayList<>();
        if (angles != null) {
            for (Expr angle : angles) {
                if (angle.toString().contains("theta")) {
                    evaluatedAngles.add(angle);
                } else {
                    evaluatedAngles.add(new Real(eval(angle)));
                }
            }
            angles = evaluatedAngles;

            if (allAnglesZero(evaluatedAngles) && !gate.equals("u2")) {
                return null;
            }
        }

        ArrayList<String> qubits = new ArrayList<>();
        ArrayList<String> registerNames = new ArrayList<>();
        for (Qasm3Parser.GateOperandContext gateOperandContext : ctx.gateOperandList().gateOperand()) {
            String registerName = gateOperandContext.indexedIdentifier().Identifier().getText();
            Qasm3Parser.IndexOperatorContext indexOperatorContext = gateOperandContext.indexedIdentifier().indexOperator(0);
            if (indexOperatorContext == null) { // for parsing rules that just use args like "q0", "q"
                qubits.add(registerName);
                registerNames.add("q");
            } else {
                int registerIndex = Integer.parseInt(indexOperatorContext.expression(0).getText());
                qubits.add(mappedQubitName(String.format("%s[%s]", registerName, registerIndex)));
                registerNames.add(registerName);
            }
        }

        return new Node(gate, GATE, qubits, angles, registerNames);
    }

    private String mappedQubitName(String qubit) {
        return qubitRenameMap.getOrDefault(qubit, qubit);
    }

    public static Double eval(Expr e) {
        switch (e) {
            case Real r:
                return r.getNumber();
            case BinOp bo:
                return evalBinOp(bo);
            case Constant c: {
                if (c.getId().equals("pi")) {
                    return Math.PI;
                } else {
                    throw new RuntimeException(String.format("unimplemented constant: %s", c));
                }
            }
            case Symbol s: {
                if (s.getSymbol().equals("pi")) {
                    return Math.PI;
                } else {
                    throw new RuntimeException(String.format("unimplemented symbol: %s", s));
                }
            }
            case UnOp uo:
                return evalUnOp(uo);
            default:
                assert false;
                return null; // stupid hack to make the compiler happy ugh
        }
    }

    private static double evalBinOp(BinOp bo) {
        double v1 = eval(bo.getE1());
        double v2 = eval(bo.getE2());
        switch (bo.getOp()) {
            case ADD:
                return v1 + (v2);
            case SUBTRACT:
                return v1 - (v2);
            case MULT:
                return v1 * (v2);
            case DIV:
                return v1 / (v2);
            default:
                throw new RuntimeException(String.format("unimplemented BinOp: %s", bo.getOp()));
        }
    }

    private static double evalUnOp(UnOp uo) {
        double v = eval(uo.getE());
        switch (uo.getOp()) {
            case MINUS:
                return -v;
            default:
                throw new RuntimeException(String.format("unimplemented UnOp: %s", uo.getOp()));
        }
    }

    private static boolean isMult4PI(double angle) {
        return angle % (4 * Math.PI) == 0;
    }

    public static boolean allAnglesZero(List<Expr> angles) {
        for (Expr angle : angles) {
            if (angle.toString().contains("theta")) {
                return false;
            }
            if (!isMult4PI(eval(angle))) {
                return false;
            }
        }
        return true;
    }
}
