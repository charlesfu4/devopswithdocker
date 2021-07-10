#!/bin/bash

set -ex

if [ ! -d "Pluss-Interview-task" ]; then
    git clone https://github.com/charlesfu4/Pluss-Interview-task.git
fi
cd Pluss-Interview-task
docker build -t tinyurl .

docker login -u $DOCKER_USERNAME --password-stdin
docker tag tinyurl $DOCKER_USERNAME/tinyurl
docker push $DOCKER_USERNAME/tinyurl
