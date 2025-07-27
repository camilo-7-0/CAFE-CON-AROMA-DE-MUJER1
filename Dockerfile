# Usar una imagen base oficial de Java con JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Crear un directorio para la app
WORKDIR /app

# Copiar el JAR construido desde tu proyecto al contenedor
COPY target/*.jar app.jar

# Exponer el puerto que tu app usa (Render usará PORT)
EXPOSE 8080

# Comando para ejecutar tu app
ENTRYPOINT ["java", "-jar", "app.jar"]
COPY build/libs/*.jar app.jar
