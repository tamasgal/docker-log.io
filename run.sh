#!/bin/bash

# log.io server
docker run -d -p 28777:28777 -p 8082:28778 -v $(pwd)/config:/home/logio/.log.io --name logio-server tamasgal/log.io-server:0.1

# log.io harvester
docker run -d -v $(pwd)/config:/home/logio/.log.io -v $(pwd)/logs:/logs --link logio-server:logio-server tamasgal/log.io-server:0.1 log.io-harvester
