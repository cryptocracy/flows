#!/bin/bash

docker build -t gcr.io/jackzampolin-web/cryptocracy:latest .
docker run -it -p 1880:1880 -v $(pwd)/node-red:/data --name cryptocracy gcr.io/jackzampolin-web/cryptocracy:latest
