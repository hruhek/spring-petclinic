FROM openjdk:8-jre-alpine

COPY target/spring-petclinic-*.jar /usr/src/myapp/app.jar
WORKDIR /usr/src/myapp
CMD java -Dspring.profiles.active=mysql -jar /usr/src/myapp/app.jar
