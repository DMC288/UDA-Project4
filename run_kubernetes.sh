#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ch2882017github/fptcuongdm4-ml-api

# Step 2
# Run the Docker Hub container with kubernetes
 kubectl run fptcuongdm4-ml-api \
    --image=$dockerpath \
    --port=80 --labels app=fptcuongdm4-ml-api
    
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward fptcuongdm4-ml-api 8080:80
