FROM maven:3.8.4-openjdk-8 AS backbuild

COPY . /build

WORKDIR /app

RUN mvn clean package

FROM openjdk:8 AS runback

WORKDIR /opt/backend-test

COPY --from=backbuild /build/target/spring-petclinic-rest-2.4.2.jar app.jar

EXPOSE 9966

ENTRYPOINT ["/usr/bin/java", "-jar", "app.jar"]