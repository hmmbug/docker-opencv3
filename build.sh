#!/bin/bash

IMAGE="hmmbug/opencv3"
VERSION="1.0.0"

docker build -t ${IMAGE}:${VERSION} . | tee docker-build.log || exit 1
ID=$(tail -1 docker-build.log | awk '{print $3;}')
#docker tag $ID -f ${IMAGE}:latest
docker images | grep ${IMAGE}
