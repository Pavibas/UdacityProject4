#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="pavithradevithambusamy/operationalize-a-machine-learning-microservice-api:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run learning-microservice-api --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward learning-microservice-api 8000:80
