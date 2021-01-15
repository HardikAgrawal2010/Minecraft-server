FROM gradle AS build

FROM openjdk:8-jre
EXPOSE 8888
WORKDIR /app
COPY server.jar .
CMD java -Xmx1500M -Xms1500M -jar server.jar
