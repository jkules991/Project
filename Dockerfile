FROM maven:3.8.4-openjdk-8 AS backbuild

WORKDIR /app

COPY . .

RUN mvn package

FROM openjdk:8 AS runback

COPY --from=backbuild /app/target/spring-petclinic-rest-2.4.2.jar .

EXPOSE 9966

ENTRYPOINT ["java", "-jar", "spring-petclinic-rest-2.4.2.jar"]