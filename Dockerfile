# Start with a base image containing Java runtime and Maven
FROM maven:3.8.4-openjdk-17

# Add Maintainer Info
LABEL maintainer="niteshchoudhary1217@gmail.com"

# Set the working directory
WORKDIR /app

# Copy the Maven project file
COPY pom.xml .

# Copy the source code
COPY src src

# Build the application
RUN mvn package

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/AssemblyProject-0.0.1-SNAPSHOT.jar"]
