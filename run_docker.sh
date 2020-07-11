#!/usr/bin/env bash

# fail fast
set -e

# Build image and add a descriptive tag
docker build -t udacity-predictions .

# List docker images
docker image ls -f "reference=udacity-predictions:*"

# Run flask app
docker run --rm --name udacity-predictions -p 8090:80 udacity-predictions
