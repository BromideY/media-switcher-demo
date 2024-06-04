#!/bin/bash

DOCKER_TAG=$(git rev-parse --short HEAD)

sudo docker build -f Dockerfile -t media-switcher-demo:${DOCKER_TAG} .