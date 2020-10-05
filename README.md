
Dockerfile settes opp slik at den bygges som multi stage:

    FROM maven:3.6-jdk-11 as builder
    WORKDIR /app
    COPY pom.xml .
    COPY src ./src
    RUN mvn package 

    FROM openjdk:8-jdk-alpine
    COPY --from=builder /app/target/*.jar /app/application.jar
    ENTRYPOINT ["java","-jar","/app/application.jar"]

Det er viktig at applikasjonen er konfigurert for å lytte på en port som bestemmes av miljøvariablen PORT. I application.properties i Spring boot prosjektet

    server.port=${PORT:8080}
