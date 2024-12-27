FROM eclipse-temurin:21-jdk-ubi9-minimal
RUN mkdir /app
COPY target/microservicio-eureka-0.0.1-SNAPSHOT.jar app/microservicio-eureka-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","app/microservicio-eureka-0.0.1-SNAPSHOT.jar"]
# docker build --tag=microservicio-eureka:latest .
# docker run -p8761:8761 -d --net=docker-network --name=microservicio-eureka  microservicio-eureka:latest