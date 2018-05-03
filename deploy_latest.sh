#!/bin/bash
echo "Hello from the script"
sleep 120s
docker ps -a -q --filter ancestor=petclinic --format="{{.ID}}"
#docker stop $(docker ps -a -q --filter ancestor=petclinic --format="{{.ID}}")
#docker build -t "petclinic:latest" -f DeployDockerfile .
#docker run -p 8080:8080 -n petclinic-latest -d petclinic:latest