#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag helloworld --build-arg JAR_FILE=./target/devOps-hello-world-0.0.1-SNAPSHOT.jar
docker tag helloworld  opkris/fanatastichelloapp
docker push opkris/fanatastichelloapp