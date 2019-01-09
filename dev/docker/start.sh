#!/usr/bin/env bash

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd "$SCRIPTDIR"

PROJECT_ID=$(cat ./.projectID)

echo "Starting docker-compose project: ${PROJECT_ID}"

if [[ "$OSTYPE" == "darwin"* ]]; then
	D_COMMAND="docker"
	DC_COMMAND="docker-compose"
elif [[ $(which docker.exe) ]]; then
	D_COMMAND="docker.exe"
	DC_COMMAND="docker-compose.exe"
else
	D_COMMAND="docker"
	DC_COMMAND="docker-compose"
fi;

# start the containers
${DC_COMMAND} --project-name=${PROJECT_ID} up -d --force-recreate