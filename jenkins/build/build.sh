#!/bin/sh

#Copy the new jar file to the build location

cp -f java-app/target/*.jar jenkins/build/

echo "*****************************************"
echo "***********Building Docker image*********"
echo "*****************************************"

cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
