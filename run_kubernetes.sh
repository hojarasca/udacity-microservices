#!/usr/bin/env bash

# fail fast
set -e

# This is your Docker ID/path
dockerpath='hojarasca/udacity-predictions'

# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-predictions --image=$dockerpath

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl expose deployment udacity-predictions --type=NodePort --port=80
kubectl get services

