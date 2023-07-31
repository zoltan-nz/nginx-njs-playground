#!/usr/bin/env bash
docker stop nginx-proxy
docker rm nginx-proxy
docker run -p 8080:8080 --name nginx-proxy -v $PWD/nginx/njs:/etc/nginx/njs -v $PWD/logs:/var/log/nginx nginx-proxy
#!/usr/bin/env bash

set -x -e

docker stop nginx-proxy
docker rmi -f nginx-proxy
docker rm -f nginx-proxy
docker build -t nginx-proxy .
docker run --add-host=host.docker.internal:host-gateway -p 5000:5000 --name nginx-proxy -v $PWD/nginx/njs:/etc/nginx/njs -v $PWD/logs:/var/log/nginx nginx-proxy
