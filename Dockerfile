FROM openjdk:13-alpine

VOLUME /tmp

ENV JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE $PORT:8080

ENTRYPOINT ["java", "-jar", "/app.jar"]
