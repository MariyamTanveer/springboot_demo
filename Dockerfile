# 1Use an official Java runtime as the base image
FROM openjdk:17-jdk-slim

# 2Set the working directory inside the container
WORKDIR /app

# 3Copy the built JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 4Expose the application port
EXPOSE 8080

# 5Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
