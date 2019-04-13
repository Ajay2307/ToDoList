FROM maven:3.6.0-jdk-8

COPY . /usr/app-root/src/

WORKDIR /usr/app-root/src/

RUN mvn clean package -DskipTests

EXPOSE 8080

ENTRYPOINT ["java","-jar","target/todo.war"]
