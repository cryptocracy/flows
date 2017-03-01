# Summary
This repo is basically just a node-red flow for you to import into your node-red instance to turn it into a Preferred Server node

# Requirements:

The server needs to have node-red, redis, and blockstack installed.

# Additional Requirements Node-Red nodes:

node-red-contrib-redis

node-red-contrib-auth

[api-end-points.json](https://github.com/cryptocracy/flows/blob/master/api-end-points.json)

# Warning:

For these api end points to be used, the client application (Souq) must have the path to the server saved in its configuration.

# Requirement Setup Guide Overview

This guide assumes that you are using Ubuntu 16.04. Before you begin, you should have a non-root user account with `sudo` privileges set up on your system. (THIS IS STILL BEING DOCUMENTED DO NOT USE YET)

`$ sudo apt-get update` then `y`

`$ sudo apt-get install nodejs` then `y`

`$ sudo apt-get install npm` then `y`

`$ sudo npm install -g node-red` then `y`

`$ cd $HOME/.node-red` 

`$ sudo npm install node-red-contrib-redis`

`$ sudo npm install node-red-contrib-auth`

`$ sudo npm install forever -g`

(setup forever and autostart on reboot for node-red - `node-red` to start)

`$ cd ..` (move up a folder)

`$ wget http://download.redis.io/redis-stable.tar.gz`

`$ tar xvzf redis-stable.tar.gz`

`$ cd redis-stable`

`$ make`

(need forever/autorestart for redis - `$ redis-server` to start)
