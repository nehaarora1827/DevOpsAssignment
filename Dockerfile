FROM tomcat:alpine
MAINTAINER DevOpsAssignment
ADD SampleWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
