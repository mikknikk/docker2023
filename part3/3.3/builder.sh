#!/bin/sh
github=$1
dockerhub=$2

echo -n "Cloning from GitHub... "
git clone git@github.com:$github.git
echo "OK."
echo -n "Building Docker image..."
docker build . -t $dockerhub
echo "OK."
echo -n "Pushing to DockerHub..."
docker image push $dockerhub
echo "OK."
