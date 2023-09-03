#!/bin/bash

docker rm -f plugin-test-env-www-1
docker rmi wpserver
docker-compose up -d