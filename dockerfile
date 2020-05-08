FROM openjdk:11-jdk-slim
VOLUME /tmp
COPY target/*.jar ConfigServer.jar
ENTRYPOINT ["java","-jar","ConfigServer.jar"]
