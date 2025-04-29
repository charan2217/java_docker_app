# ---- Build Stage ----
    FROM maven:3.8.5-openjdk-11 AS build
    WORKDIR /app
    COPY pom.xml .
    COPY src ./src
    RUN mvn clean package
    
    # ---- Run Stage ----
    FROM openjdk:11-jre-slim
    WORKDIR /usr/app
    COPY --from=build /app/target/myapp-1.0.jar myapp.jar
    ENTRYPOINT ["java", "-jar", "myapp.jar"]
    