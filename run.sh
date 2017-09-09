#!/bin/bash

# build the image
echo "Building the Docker image"
docker build -t log.io .

# log.io server
echo "Starting log.io server"
docker run -d \
    -p 28777:28777 \
    -p 8082:28778 \
    -v $(pwd)/config:/home/logio/.log.io \
    --name logio-server \
    log.io

# log.io harvester
echo "Starting log.io harvester"
docker run -d \
    -v $(pwd)/config:/home/logio/.log.io \
    -v $(pwd)/logs:/logs \
    --link logio-server:logio-server \
    --name logio-harvester \
    log.io \
    log.io-harvester

echo "The log.io service is now up and running."
