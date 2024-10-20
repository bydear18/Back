# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/IMPS-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on (default is 8080 or 8443 for HTTPS)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
