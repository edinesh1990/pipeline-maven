#!/bin/sh

echo "*****************************"
echo "*****Pushing the images******"
echo "*****************************"

IMAGE=maven-project

echo "*****Docker Hub login****"
docker login -u edinesh90 -p $PASS
echo "****Tagging the image****"
docker tag $IMAGE:$BUILD_TAG edinesh90/$IMAGE:$BUILD_TAG
echo "****Pushing the images***"
docker push edinesh90/$IMAGE:$BUILD_TAG
