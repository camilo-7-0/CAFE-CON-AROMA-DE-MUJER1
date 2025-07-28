FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

# Copiamos el JAR generado a /app/app.jar
COPY build/libs/*.jar app.jar


EXPOSE 8080

# Ejecutamos la app con el JAR copiado
ENTRYPOINT ["java", "-jar", "app.jar"]

