FROM openjdk:11-jdk-slim
VOLUME /tmp
COPY apiEncryptionKey.jks aipEncryptionKey
COPY target/PhotoAppAPIConfigServer-0.0.1-SNAPSHOT.jar ConfigServer.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"]
