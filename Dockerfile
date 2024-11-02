FROM openjdk:17-slim

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

MAINTAINER joao-vitor-moraveis

COPY target/config-server-0.0.1-SNAPSHOT.jar config-server-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "config-server-0.0.1-SNAPSHOT.jar"]
