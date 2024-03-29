#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="pavithradevithambusamy/operationalize-a-machine-learning-microservice-api:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker logout
docker login -u pavithradevithambusamy
docker tag learning-microservice-api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
