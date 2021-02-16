FROM openjdk:8-jdk-alpine

VOLUME /tmp

COPY target/spring-petclinic-2.4.2.jar target/spring-petclinic-2.4.2.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/target/spring-petclinic-2.4.2.jar"]
