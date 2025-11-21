FROM eclipse-temurin:21-jdk
WORKDIR /app

COPY build/libs/spring-ai-0.0.1-SNAPSHOT.jar app.jar
COPY src/main/resources/gemini-service-account.json /app/resources/gemini-service-account.json

ENTRYPOINT ["java", "-jar", "app.jar"]