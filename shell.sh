#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag pgr301 --build-arg JAR_FILE=./target/devOps-hello-world-1.0-SNAPSHOT.jar
docker tag pgr301 opkris/fanatastichelloapp
docker push opkris/fantastichelloapp:pgr301