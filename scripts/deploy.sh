#!/bin/bash

# Step 1: Build Docker image
echo "Building Docker image..."
docker build -t express-app .

# Step 2: Create Kubernetes Deployment
echo "Creating Kubernetes Deployment..."
kubectl apply -f kubernetes/deployment.yaml

# Step 3: Create Kubernetes Service
echo "Creating Kubernetes Service..."
kubectl apply -f kubernetes/service.yaml

echo "Deployment complete."
