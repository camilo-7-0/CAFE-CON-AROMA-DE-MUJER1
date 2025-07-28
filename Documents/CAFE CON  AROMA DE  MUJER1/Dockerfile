# Usa Java 17 en una imagen liviana
FROM eclipse-temurin:17-jdk-alpine

# Define directorio de trabajo
WORKDIR /app

# Copia el .jar compilado en local
COPY build/libs/*.jar app.jar

# Exponer el puerto usado por Spring Boot
EXPOSE 8080

# Ejecutar la app
CMD ["java", "-jar", "app.jar"]

