FROM tomcat:10.1.1
COPY conference-demo-*.war /usr/local/tomcat/webapps/ROOT.war
