# Entorno para ejecutar aplicaciones Java 21
FROM eclipse-temurin:21-jre-jammy

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/bbva-digital-banking-lab-1.0.0.jar app.jar

# Puerto utilizado por la aplicación
EXPOSE 8080

# Iniciar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]