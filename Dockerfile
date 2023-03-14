FROM devopss23/tomcat:tomcatv1

COPY conference-demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/conference-demo.war
