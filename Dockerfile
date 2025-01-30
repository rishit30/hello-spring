Dockerfile
FROM openjdk:17
COPY . /app
WORKDIR /app
RUN ./mvnw clean package
ENTRYPOINT ["java","-jar","target/helloworld-0.0.1-SNAPSHOT.jar"]