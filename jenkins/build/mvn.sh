#!/bin/sh

echo "*****************************"
echo "******Building jar***********"
echo "*****************************"

WORKSPACE=/home/centos/jenkins-data/pipeline/

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
