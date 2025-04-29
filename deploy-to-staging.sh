#!/bin/bash
echo "Deploying application to staging environment..."
docker run -d --name myapp-staging -p 8080:8080 your_dockerhub_username/myapp:latest
