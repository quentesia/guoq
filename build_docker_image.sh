mvn package -Dmaven.test.skip
docker build -t amxu/queso:$1 .
