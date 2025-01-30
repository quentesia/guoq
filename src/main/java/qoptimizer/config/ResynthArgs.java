package qoptimizer.config;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import lombok.Getter;
import net.sourceforge.argparse4j.inf.Argument;
import net.sourceforge.argparse4j.inf.ArgumentParser;
import net.sourceforge.argparse4j.inf.ArgumentParserException;
import net.sourceforge.argparse4j.inf.ArgumentType;

public class ResynthArgs implements ArgumentType<ResynthArgs> {
    @SerializedName("bqskitOptLevel")
    @Getter
    int bqskitOptLevel;
    @SerializedName("synthetiqNumCircuits")
    @Getter
    int synthetiqNumCircuits;
    @SerializedName("synthetiqThreads")
    @Getter
    int synthetiqThreads;

    public ResynthArgs(int bqskitOptLevel, int synthetiqNumCircuits, int synthetiqThreads) {
        this.bqskitOptLevel = bqskitOptLevel;
        this.synthetiqNumCircuits = synthetiqNumCircuits;
        this.synthetiqThreads = synthetiqThreads;
    }

    public ResynthArgs() {
    }

    @Override
    public ResynthArgs convert(ArgumentParser parser, Argument arg, String value)
            throws ArgumentParserException {
        try {
            return new Gson().fromJson(value, ResynthArgs.class);
        } catch (Exception e) {
            throw new ArgumentParserException(e, parser);
        }
    }

    @Override
    public String toString() {
        return "{" +
                "\"bqskitOptLevel\":" + bqskitOptLevel +
                ", \"synthetiqNumCircuits\":" + synthetiqNumCircuits +
                ", \"synthetiqThreads\":" + synthetiqThreads +
                '}';
    }
}
