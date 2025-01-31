docker
FROM openjdk:17
EXPOSE 8080
ADD ./target/myapp.jar myapp.jar
ENTRYPOINT ["java","-jar","/myapp.jar"]