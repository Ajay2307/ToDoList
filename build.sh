#!/bin/bash

# Build application
mvn clean package

# Buiild docker file
docker build -t rkdevmre/was-j2ee-todo-app:v2 .

# push into the docker hub
docker push rkdevmre/was-j2ee-todo-app:v2
