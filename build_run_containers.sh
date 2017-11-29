#!/bin/sh

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
docker network rm envoymesh
# Build Containers
docker build -t jservice . -f Dockerfile-jservice
docker build -t front-envoy . -f Dockerfile-frontenvoy
docker build -t goservice . -f Dockerfile-goservice
docker build -t front-envoy-weighted . -f Dockerfile-frontenvoy-weighted


# Build docker envoy network mesh
docker network create -d bridge envoymesh

# Run Containers
docker run -d -p 8000:80 -p 9001:9001 --network=envoymesh --net-alias=frontenvoy --name front-envoy front-envoy
docker run -d -p 8010:80 -p 9010:9010 --network=envoymesh --net-alias=frontenvoy-weighted --name front-envoy-weighted front-envoy-weighted
docker run -d --network=envoymesh --net-alias=jservice --name jservice jservice
docker run -d --network=envoymesh --net-alias=goservice --name goservice goservice

# docker run -d -p 8000:80 -p 9001:9001 --net=host  --name front-envoy front-envoy
# docker run -d -p 8100:80 --net=host  --name jservice jservice
