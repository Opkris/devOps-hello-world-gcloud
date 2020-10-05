#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag fantastichelloapp --build-arg JAR_FILE=./target/devOps-hello-world-1.0-SNAPSHOT.jar
docker tag fantastichelloapp opkris/fantastichelloapp
docker push opkris/fantastichelloapp