#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-predictions .

# Step 2: 
# List docker images
docker image ls -f "reference=udacity-predictions:*"

# Step 3: 
# Run flask app
docker run --rm --name udacity-predictions -p 8090:80 udacity-predictions
