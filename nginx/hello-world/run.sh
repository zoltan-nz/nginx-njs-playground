#!/usr/bin/env bash
docker stop nginx-hello-world
docker rm nginx-hello-world
docker run -p 8080:8080 --name nginx-hello-world -v $PWD/nginx/njs:/etc/nginx/njs -v $PWD/logs:/var/log/nginx nginx-hello-world
