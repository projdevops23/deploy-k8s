FROM tomcat:latest
COPY target/spring-boot-thymeleaf-example-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT
