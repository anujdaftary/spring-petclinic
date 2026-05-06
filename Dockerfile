# Use official lightweight OpenJDK 17 image
FROM openjdk:17-slim

# Set working directory inside container
WORKDIR /app

# Copy Maven-built JAR into container
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
