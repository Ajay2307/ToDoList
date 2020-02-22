FROM tomcat

WORKDIR /usr/local/tomcat/webapps/

USER root

RUN chmod -R a+w /usr/local/tomcat/webapps

ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY target/todo.war /usr/local/tomcat/webapps/todo.war

RUN chmod 777 /usr/local/tomcat/conf/tomcat-users.xml

RUN mkdir -p /usr/local/tomcat/webapps/manager/text/

RUN chmod -R 777 /usr/local/tomcat/webapps/manager/text/

#RUN sh /usr/local/tomcat/bin/startup.sh

EXPOSE 8080

