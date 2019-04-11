FROM websphere-liberty:19.0.0.3-javaee8

# Setting up the configuration
COPY --chown=1001:0  target/todo.war /config/dropins/
COPY --chown=1001:0  server.xml /config/

# setting up the default environment variables
ENV DB_NAME todo 
ENV DB_SERVER localhost 
ENV DB_PORT 3306
ENV DB_USER devops 
ENV DB_PASS redhat123


# Changing the working directory
WORKDIR /var/tmp/

# Downloading the mysql java connector
RUN wget http://central.maven.org/maven2/mysql/mysql-connector-java/8.0.13/mysql-connector-java-8.0.13.jar

# This script will add the requested XML snippets and grow image to be fit-for-purpose
RUN configure.sh

