#!/bin/bash

oc delete all --selector app=todo-list-app

sudo docker build -t docker.io/ajay2307/todo-app-tomcat:v4 .

sudo docker push docker.io/ajay2307/todo-app-tomcat:v4

oc new-app  docker.io/ajay2307/todo-app-tomcat:v3 --name todo-list-app

oc expose svc/todo-list-app
