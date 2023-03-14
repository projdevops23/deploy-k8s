FROM tomcat:10.1.1
COPY conference-demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
