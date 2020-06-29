FROM tomcat:alpine
MAINTAINER DevOpsAssignment
RUN wget -O /usr/local/tomcat/webapps/SampleWebApp.war http://10.127.130.66:8040/artifactory/DevOpsAssignment_Neha/com/sample/webproject/SampleWebApp/1.0-SNAPSHOT/SampleWebApp-1.0-SNAPSHOT.war
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
