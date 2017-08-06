#!/bin/bash

docker rm -f $(docker ps -a -q)

docker build -t javascript-tdd-environment .

docker run --name js-tdd -ti -p 8080:8080 -v "$PWD:/myproject" javascript-tdd-environment /bin/bash

