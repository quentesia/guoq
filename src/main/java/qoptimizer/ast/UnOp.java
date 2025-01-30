package qoptimizer.ast;

import lombok.Getter;
import lombok.Setter;

public final class UnOp extends Expr {
    @Getter
    @Setter
    private Op op;
    @Getter
    @Setter
    private Expr e;

    public UnOp(Op op, Expr e) {
        this.op = op;
        this.e = e;
    }

    private String opString(Op op) {
        if (op.equals(Op.MINUS)) {
            return "-";
        } else {
            return op.toString();
        }
    }

    @Override
    public String toString() {
        return String.format("(%s%s)", opString(op), e);
    }
}
