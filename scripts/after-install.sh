#!/bin/bash

REPOSITORY=/home/ec2-user/build
echo "REPOSITORY = $REPOSITORY"
cd $REPOSITORY

PROJECT_NAME=demo-0.0.1-SNAPSHOT.war
echo "PROJECT_NAME = $PROJECT_NAME"

PROJECT_PID=$(pgrep -f $PROJECT_NAME)
echo "PROJECT_PID = $PROJECT_PID"

if [ -z $PROJECT_PID ]; then
    echo "no running project"
else
    kill -9 $PROJECT_PID
    sleep 3
fi

JAR_NAME=$(ls $REPOSITORY/ | grep $PROJECT_NAME | tail -n 1)
echo "JAR_NAME = $JAR_NAME"

java -jar $REPOSITORY/$JAR_NAME &
