#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u mcallisaya -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG mcallisaya/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push mcallisaya/$IMAGE:$BUILD_TAG