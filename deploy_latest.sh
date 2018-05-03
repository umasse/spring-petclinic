#!/bin/bash
echo "Deploying new build"
#docker ps -a -q --filter ancestor=petclinic --format="{{.ID}}"
#docker stop $(docker ps -a -q --filter ancestor=petclinic --format="{{.ID}}") || true
docker stop petclinic-latest || true
docker rm -f petclinic-latest || true
docker build -t "petclinic:latest" -f DeployDockerfile .
docker run -p 8080:8080 --name=petclinic-latest -d petclinic:latest