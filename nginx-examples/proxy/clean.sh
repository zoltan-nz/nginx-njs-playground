#!/usr/bin/env bash

docker stop nginx-proxy
docker rmi -f nginx-proxy
docker rm -f nginx-proxy
