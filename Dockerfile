# Use official lightweight OpenJDK 17 image
FROM openjdk:17-slim

# Set working directory inside container
WORKDIR /app

# Copy the JAR file built by Maven (adjust if JAR name is different)
COPY target/*.jar app.jar

# Expose the port the app will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
