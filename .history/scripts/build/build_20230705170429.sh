#!/bin/bash

# Copy the new jar to the build location
cp -f PRUEBA/marco-pipeline/target/*.jar scripts/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd scripts/build/ && docker-compose -f docker-compose-build.yml build --no-cache