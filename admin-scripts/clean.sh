#! /bin/bash

SCRIPT_PATH="$(dirname "$0")"

: '
This script will clean up the docker environment
It will remove all containers, images and volumes
related to the creditcard application.
'

docker ps -a
docker images -a
docker volume ls

echo "------------------------------"

echo "Stopping all containers" 
(cd "$SCRIPT_PATH/.." && docker-compose down)

echo "Removing the database-db image"
docker images -a | grep "database-db" | awk '{print $3}' | xargs docker rmi -f 2>/dev/null

echo "Removing the database_howzat volume"
docker volume rm database_howzat 2>/dev/null

echo "Removing dangling images"
docker images -f "dangling=true" -q | xargs docker rmi -f 2>/dev/null

echo "------------------------------"

docker ps -a
docker images -a
docker volume ls


