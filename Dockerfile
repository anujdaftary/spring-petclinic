# Use official OpenJDK 17 image
FROM openjdk:17-jdk

# Set working directory
WORKDIR /app

# Copy the jar file (adjust name if needed)
COPY target/*.jar app.jar

# Expose the port your app runs on (usually 8080)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
