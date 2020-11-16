#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag devOps-eksamen --build-arg JAR_FILE=./target/devOps-hello-world-gcloud-1.0-SNAPSHOT.jar
docker tag devOps-eksamen opkris/devOps-eksamen
docker push opkris/devOps-eksamen
