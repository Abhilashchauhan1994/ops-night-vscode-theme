#!/bin/bash

APP_NAME="ops-night"
ENVIRONMENT="production"

echo "Deploying $APP_NAME to $ENVIRONMENT"

docker build -t ops-night:latest .

kubectl apply -f app.yaml

echo "Deployment completed"