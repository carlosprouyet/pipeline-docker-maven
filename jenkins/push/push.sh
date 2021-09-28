#!/bin/bash

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="192.168.117.128:5000"
IMAGE="app"

echo "*** Logging in ***"
#docker login -u user1 -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
