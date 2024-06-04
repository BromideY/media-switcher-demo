#!/bin/bash

DOCKER_TAG=$(git rev-parse --short HEAD)

docker run -dit --name media-switcher-demo -v /dev/shm:/dev/shm --network host media-switcher-demo:${DOCKER_TAG}