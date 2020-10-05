FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]


#FROM maven:3.6-jdk-11 as builder
#WORKDIR /app
#COPY pom.xml .
#COPY src ./src
#RUN mvn package
#
#FROM openjdk:8-jdk-alpine
#COPY --from=builder /app/target/*.jar /app/application.jar
#ENTRYPOINT ["java","-jar","/app/application.jar"]