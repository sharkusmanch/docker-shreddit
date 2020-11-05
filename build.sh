#!/bin/bash

docker buildx create --name my
docker buildx use my

docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t contentar/shreddit:latest  --push .