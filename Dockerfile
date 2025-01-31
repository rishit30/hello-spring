FROM openjdk:17
    WORKDIR /app
    COPY . ./
    RUN ./mvnw package
    CMD ["java", "-jar", "target/hello-spring-0.0.1-SNAPSHOT.jar"]