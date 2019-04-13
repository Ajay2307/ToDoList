FROM tomcat:8

USER tomcat

WORKDIR /usr/local/tomcat

COPY target/todo.war /usr/local/tomcat/webapps/

ENTRYPOINT ["java","-jar","target/todo.war"]

EXPOSE 8080
