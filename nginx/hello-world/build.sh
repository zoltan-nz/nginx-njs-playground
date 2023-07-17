#!/usr/bin/env bash
docker rmi -f nginx-hello-world
docker build -t nginx-hello-world .
