# Use the official OpenJDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Expose the port the app runs on
EXPOSE 8088

# Copy the JAR file into the container
COPY build/libs/RMDocker-0.0.1-SNAPSHOT.jar RMDocker-0.0.1-SNAPSHOT.jar

# Run the application
CMD ["java", "-jar", "RMDocker-0.0.1-SNAPSHOT.jar"]