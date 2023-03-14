FROM tomcat:latest
COPY conference-demo-*.war /usr/local/tomcat/webapps/ROOT.war
