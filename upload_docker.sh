#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ayamorsi/flask_app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=ayamorsi

docker tag flask_app ayamorsi/udacity:latest
 
# Step 3:
# Push image to a docker repository
docker push ayamorsi/udacity
