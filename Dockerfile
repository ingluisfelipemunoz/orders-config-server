# Usa una imagen base de Java
FROM openjdk:21-slim

# Copia el jar construido al contenedor
COPY target/config-server*.jar config-server.jar

# Expone el puerto 8888
EXPOSE 8888

# Define el entrypoint para iniciar la aplicación
ENTRYPOINT ["java", "-jar", "config-server.jar"]
