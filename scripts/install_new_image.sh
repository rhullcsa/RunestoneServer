#!/bin/bash

set -e

cd /home/bmiller/Runestone/RunestoneServer/production

if [[ $PWD != */production ]]; then
    echo 'you need to be in the production folder for this'
    exit 
fi

# pull the latest
git pull
docker pull registry.digitalocean.com/runestone-registry/production_server:latest

docker compose stop
docker compose up -d
