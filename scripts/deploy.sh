#!/bin/bash

VERSION="$1"

if [ "$VERSION" = "v1" ]; then
    kubectl apply -f kubernetes/v1/deployment.yaml
    kubectl apply -f kubernetes/v1/service.yaml
elif [ "$VERSION" = "v2" ]; then
    kubectl apply -f kubernetes/v2/deployment.yaml
    kubectl apply -f kubernetes/v2/service.yaml
else
    echo "Invalid version. Usage: ./deploy.sh [v1|v2]"
    exit 1
fi
