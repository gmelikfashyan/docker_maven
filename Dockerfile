FROM openjdk:11

RUN apt-get update && \
    apt-get install -y maven

WORKDIR /app
COPY pom.xml .
COPY src ./src

RUN mvn package

CMD ["java", " -jar", "target/Main-1.0-SNAPSHOT.jar"]