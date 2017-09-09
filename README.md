# log.io-server Docker Container

## Example
```
docker run -d \
    -p 28777:28777 \
    -p 28778:28778 \
    -v /path/to/config:/home/logio/.log.io \
    --name logio-server \
    tamasgal/logio-server
```
