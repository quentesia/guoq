package qoptimizer.parser;

import qoptimizer.ast.Constant;
import qoptimizer.ast.Expr;
import qoptimizer.ast.Real;
import qoptimizer.ast.Symbol;
import qoptimizer.ast.UnOp;
import org.antlr.v4.runtime.tree.TerminalNode;
import qasm.Qasm3Parser;
import qasm.Qasm3ParserBaseVisitor;
import qoptimizer.ast.BinOp;

import java.util.ArrayList;
import java.util.List;

public class ExprVisitor extends Qasm3ParserBaseVisitor<List<Expr>> {
    @Override
    public List<Expr> visitExpressionList(Qasm3Parser.ExpressionListContext ctx) {
        ArrayList<Expr> expressions = new ArrayList<>();
        for (Qasm3Parser.ExpressionContext expressionContext : ctx.expression()) {
            expressions.add(visitExpression(expressionContext));
        }
        return expressions;
    }

    public Expr visitExpression(Qasm3Parser.ExpressionContext ctx) {
        if (ctx instanceof Qasm3Parser.LiteralExpressionContext) {
            TerminalNode decimalIntegerLiteral = ((Qasm3Parser.LiteralExpressionContext) ctx).DecimalIntegerLiteral();
            TerminalNode floatLiteral = ((Qasm3Parser.LiteralExpressionContext) ctx).FloatLiteral();
            TerminalNode identifierLiteral = ((Qasm3Parser.LiteralExpressionContext) ctx).Identifier();

            if (decimalIntegerLiteral != null) {
                return new Real(Double.parseDouble(decimalIntegerLiteral.getText()));
            } else if (floatLiteral != null) {
                return new Real(Double.parseDouble(floatLiteral.getText()));
            } else if (identifierLiteral != null) {
                if (identifierLiteral.getText().equals("pi")) {
                    return new Constant("pi");
                } else {
                    return new Symbol(identifierLiteral.getText());
                }
            } else {
                throw new RuntimeException("Unsupported literal type");
            }
        } else if (ctx instanceof Qasm3Parser.AdditiveExpressionContext) {
            TerminalNode subtract = ((Qasm3Parser.AdditiveExpressionContext) ctx).MINUS();
            TerminalNode add = ((Qasm3Parser.AdditiveExpressionContext) ctx).PLUS();

            if (subtract != null) {
                return new BinOp(Expr.Op.SUBTRACT, visitExpression(((Qasm3Parser.AdditiveExpressionContext) ctx).expression(0)), visitExpression(((Qasm3Parser.AdditiveExpressionContext) ctx).expression(1)));
            } else if (add != null) {
                return new BinOp(Expr.Op.ADD, visitExpression(((Qasm3Parser.AdditiveExpressionContext) ctx).expression(0)), visitExpression(((Qasm3Parser.AdditiveExpressionContext) ctx).expression(1)));
            } else {
                throw new RuntimeException("Unsupported additive expression");
            }
        } else if (ctx instanceof Qasm3Parser.MultiplicativeExpressionContext) {
            TerminalNode multiply = ((Qasm3Parser.MultiplicativeExpressionContext) ctx).ASTERISK();
            TerminalNode divide = ((Qasm3Parser.MultiplicativeExpressionContext) ctx).SLASH();

            if (multiply != null) {
                return new BinOp(Expr.Op.MULT, visitExpression(((Qasm3Parser.MultiplicativeExpressionContext) ctx).expression(0)), visitExpression(((Qasm3Parser.MultiplicativeExpressionContext) ctx).expression(1)));
            } else if (divide != null) {
                return new BinOp(Expr.Op.DIV, visitExpression(((Qasm3Parser.MultiplicativeExpressionContext) ctx).expression(0)), visitExpression(((Qasm3Parser.MultiplicativeExpressionContext) ctx).expression(1)));
            } else {
                throw new RuntimeException("Unsupported multiplicative expression");
            }
        } else if (ctx instanceof Qasm3Parser.UnaryExpressionContext) {
            TerminalNode minus = ((Qasm3Parser.UnaryExpressionContext) ctx).MINUS();
            if (minus != null) {
                return new UnOp(Expr.Op.MINUS, visitExpression(((Qasm3Parser.UnaryExpressionContext) ctx).expression()));
            } else {
                throw new RuntimeException("Unsupported unary expression");
            }
        } else if (ctx instanceof Qasm3Parser.ParenthesisExpressionContext) {
            return visitExpression(((Qasm3Parser.ParenthesisExpressionContext) ctx).expression());
        } else {
            throw new RuntimeException(String.format("Unsupported expression type: %s", ctx.getClass()));
        }
    }
}
