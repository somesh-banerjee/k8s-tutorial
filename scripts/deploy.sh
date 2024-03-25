#!/bin/bash

# Step 1: Build Docker image
echo "Building Docker image..."
docker build -t express-app .

# Step 2: Create Kubernetes Deployment
echo "Creating Kubernetes Deployment..."
kubectl apply -f deployment.yaml

# Step 3: Create Kubernetes Service
echo "Creating Kubernetes Service..."
kubectl apply -f service.yaml

echo "Deployment complete."
