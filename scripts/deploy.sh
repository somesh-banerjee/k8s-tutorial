#!/bin/bash

# Usage: ./deploy.sh <version>

# Check if version is provided
if [ -z "$1" ]; then
    echo "Please provide a version number."
    exit 1
fi

Version=$1 

# Step 1: Build Docker image
echo "Building Docker image..."
docker build -t express-app .
docker tag express-app:latest express-app:$Version 
docker tag express-app:latest localhost:32000/express-app:$Version # Tagging the image with the local registry
docker push localhost:32000/express-app:$Version # Pushing the image to the local registry

# Step 2: Create Kubernetes Deployment
echo "Creating Kubernetes Deployment..."
kubectl apply -f kubernetes/deployment.yaml

# Step 3: Create Kubernetes Service
echo "Creating Kubernetes Service..."
kubectl apply -f kubernetes/service.yaml

echo "Deployment complete."
