package qoptimizer.ast;

import lombok.Getter;
import lombok.Setter;

public final class BinOp extends Expr {
    @Getter
    @Setter
    private Op op;
    @Getter
    private Expr e1;
    @Getter
    private Expr e2;

    public BinOp(Op op, Expr e1, Expr e2) {
        this.op = op;
        this.e1 = e1;
        this.e2 = e2;
    }

    private String opString(Op op) {
        if (op.equals(Op.MULT)) {
            return "*";
        } else if (op.equals(Op.DIV)) {
            return "/";
        } else if (op.equals(Op.ADD)) {
            return "+";
        } else if (op.equals(Op.SUBTRACT)) {
            return "-";
        } else {
            return op.toString();
        }
    }

    @Override
    public String toString() {
        return String.format("(%s%s%s)", e1, opString(op), e2);
    }
}
