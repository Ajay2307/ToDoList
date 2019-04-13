FROM tomcat:8

USER tomcat

WORKDIR /usr/local/tomcat

COPY target/todo.war /usr/local/tomcat/webapps/

EXPOSE 8080

