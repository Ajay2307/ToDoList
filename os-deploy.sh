#!/bin/bash

oc new-app --docker-image=docker.io/rkdevmre/was-j2ee-todo-app:v2 \
    -e DB_NAME=todo \
    -e DB_SERVER=172.30.109.163 \
    -e DB_PORT=3306 \
    -e DB_USER=devops \
    -e DB_PASS=redhat123 \
    --name=todo-app