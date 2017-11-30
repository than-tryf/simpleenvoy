#!/bin/sh

#Initializations
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
docker network rm envoymesh

# Satrt composing
docker-compose up --build -d
