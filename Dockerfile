# Build stage
FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY . .
# Ithu thaan antha magic line (Windows to Linux format converter)
RUN sed -i 's/\r$//' mvnw
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# Run stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]