FROM openjdk:17-jdk-slim

WORKDIR /oci-microservices

COPY /target/*.jar oci-microservices.jar
COPY /src/main/resources/Wallet_javadev103 /oci-microservices/Wallet_javadev103

ENV TNS_ADMIN=/oci-microservices/Wallet_javadev103

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "oci-microservices.jar" ]