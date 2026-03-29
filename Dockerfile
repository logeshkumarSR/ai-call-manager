# Build stage
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
# Ithu thaan magic line: callmanager folder-kulla poyi build pannum
RUN cd callmanager && mvn clean package -Dmaven.test.skip=true

# Run stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# callmanager folder-kulla irunthu build aana JAR file-ah mattum edukkum
COPY --from=build /app/callmanager/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]