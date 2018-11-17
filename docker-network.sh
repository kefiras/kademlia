#!/bin/bash

docker build -t kademlia .
docker network create kademlia
docker run -d -P --rm --network=kademlia --name=kademlia1 kademlia
docker run -d -P --rm --network=kademlia --name=kademlia2 kademlia

