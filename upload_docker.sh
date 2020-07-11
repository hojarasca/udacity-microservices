#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# fail fast
set -e

# Create dockerpath
dockerpath='hojarasca/udacity-predictions:latest'

# Authenticate
docker login

# Tag
docker tag udacity-predictions:latest $dockerpath

echo "Docker ID and Image: $dockerpath"

# Push image to a docker repository
docker push $dockerpath
