#!/bin/bash

# Copy the new jar to the build location
ls -l
cp -f target/*.jar scripts/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd scripts/build/
docker compose -f docker-compose-build.yml build --no-cache