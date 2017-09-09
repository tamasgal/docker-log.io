#!/bin/bash

echo "Stopping containers..."
docker stop logio-harvester logio-server
echo "Removeing containers..."
docker rm logio-harvester logio-server
echo "Done."
