
# Usa Java 17 en una imagen liviana
FROM eclipse-temurin:17-jdk-alpine

# Define directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todo el proyecto al contenedor
COPY . .

# Construye el proyecto con Gradle
RUN ./gradlew build --no-daemon

# Copia el .jar generado en build/libs al nombre app.jar
RUN cp build/libs/*.jar app.jar

# Exponer el puerto usado por Spring Boot
EXPOSE 8080

# Ejecuta la app
CMD ["java", "-jar", "app.jar"]
