#!/bin/bash

PROJECT=cryptocracy

docker build -t gcr.io/$PROJECT/cryptocracy:latest .
docker run -d -p 1880:1880 -v $(pwd)/node-red:/data -v $(pwd)/blockstack:/root/.blockstack/ --name cryptocracy gcr.io/$PROJECT/cryptocracy:latest
docker exec -it cryptocracy /bin/bash
