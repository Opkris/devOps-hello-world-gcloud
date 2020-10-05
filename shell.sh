#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag helloworldgcloud --build-arg JAR_FILE=./target/devOps-hello-world-1.0-SNAPSHOT.jar
docker tag helloworldgcloud opkris/helloworldgcloud
docker push opkris/helloworldgcloud
