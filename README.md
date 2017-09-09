# log.io-server Docker Container

## Example
```
docker build -t log.io .

docker run -d \
    -p 28777:28777 \
    -p 28778:28778 \
    -v /path/to/config:/home/logio/.log.io \
    --name logio-server \
    log.io
```

## Using Docker Compose
This will run a log.io server and a harvester simultaneously. 
The `logs` folder will be mapped to `/logs` on the harvester container.
Edit the `config/harvester.conf` to enable log file monitoring.

```
docker-compose up
```
