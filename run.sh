#!/bin/bash

docker build -t gcr.io/jackzampolin-web/cryptocracy:latest .
docker run -d -p 1880:1880 -v $(pwd)/node-red:/data -v $(pwd)/blockstack:/root/.blockstack/ --name cryptocracy gcr.io/jackzampolin-web/cryptocracy:latest
docker exec -it cryptocracy /bin/bash
