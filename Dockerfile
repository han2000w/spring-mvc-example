FROM openjdk:8-jdk-alpine
COPY target/mvc.war mvc.war
ENTRYPOINT ["java","-jar","/mvc.war"]
