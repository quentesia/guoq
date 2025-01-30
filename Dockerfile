FROM amxu/queso:20

COPY benchmarks /home/benchmarks
COPY evaluation /home/evaluation
COPY src /home/src
ADD target/GUOQ-1.0-jar-with-dependencies.jar /home/
ADD pom.xml /home/
ADD resynth.py /home/
ADD rules* /home/

RUN cd /home && cp evaluation/run_guoq.py .