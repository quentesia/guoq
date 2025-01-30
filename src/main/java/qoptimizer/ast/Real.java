package qoptimizer.ast;

import lombok.Getter;

public final class Real extends Expr {
    @Getter
    private double number;

    public Real(double number) {
        this.number = number;
    }

    @Override
    public String toString() {
        if (number % 1 == 0) {
            return "" + (int) number;
        } else {
            return "" + number;
        }
    }
}
