#!/usr/bin/env bash

IMAGE_NAME=pubuduwelagedara/oc
TAG=1.0.0

./gradlew clean build

docker build -t $IMAGE_NAME:$TAG ./