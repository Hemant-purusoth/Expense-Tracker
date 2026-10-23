# FROM eclipse-temurin:17-jdk-alpine

# WORKDIR /app

# COPY target/expensetracker-0.0.1-SNAPSHOT.jar app.jar

# EXPOSE 8080

# CMD [ "java" , "-jar" ,"app.jar"]

FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

# # Build stage
# FROM maven:3.9.6-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY pom.xml .
# COPY src ./src
# # Restrict Maven memory during build to prevent Render crashes
# ENV MAVEN_OPTS="-Xmx384m"
# RUN mvn clean package -DskipTests

# # Run stage (Lightweight Alpine JRE)
# FROM eclipse-temurin:17-jre-alpine
# WORKDIR /app
# COPY --from=build /app/target/*.jar app.jar
# EXPOSE 8080
# # Restrict JVM heap to 256MB so it never exceeds Render's 512MB free tier
# ENV JAVA_OPTS="-Xmx256m -Xms128m"
# ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
