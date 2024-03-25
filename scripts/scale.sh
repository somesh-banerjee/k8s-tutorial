#!/bin/bash

# This script scales the application by increasing the number of replicas

# Check if replicas are provided
if [ -z "$1" ]; then
    echo "Please provide the number of replicas."
    exit 1
fi

Replicas=$1

# Step 1: Scale the Deployment
echo "Scaling the Deployment..."
kubectl scale deployment express-app --replicas=$Replicas

echo "Scaling complete."
