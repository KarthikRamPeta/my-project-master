FROM eclipse-temurin:8-jre
EXPOSE 8080

# 1. Set the working directory first
WORKDIR /usr/app

# 2. Copy the jar and rename it to 'app.jar' for simplicity
COPY build/libs/*.jar app.jar

# 3. Run the renamed 'app.jar'
ENTRYPOINT ["java", "-jar", "app.jar"]