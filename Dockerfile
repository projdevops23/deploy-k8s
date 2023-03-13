FROM tomcat:latest
COPY spring-boot-thymeleaf-example-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
