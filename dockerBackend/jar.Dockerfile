FROM openjdk:11
COPY target/dockerBackend-0.0.1-SNAPSHOT.jar apiServer.jar
ENTRYPOINT ["java", "-jar", "/apiServer.jar"]