Dockerfile
FROM openjdk:17

WORKDIR /app

COPY ./mvnw .
COPY ./.mvn .mvn
COPY ./pom.xml .
COPY ./src ./src

RUN chmod +x ./mvnw
RUN ./mvnw package -DskipTests

EXPOSE 8080

COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]