#!/bin/bash

echo "Restarting:"
docker restart logio-server
docker restart logoi-harvester
echo "Done."
