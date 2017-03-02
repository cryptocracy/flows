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

`$ sudo apt-get update` then `y`  // update 

`$ sudo apt-get install nodejs` then `y`  // install nodejs

`$ sudo apt-get install npm` then `y`  // install npm

`$ sudo npm install -g node-red` then `y`  // install node-red

`$ sudo npm cache clean -f` // clear npm cache

`$ sudo npm install -g n` // to install nodejs version control

`$ sudo n 6.10.0` // switch to nodejs version 6.10.0 (required for node-red)

Run Node-Red Manually

`$ sudo node-red`  // to start manually  

Browse to Server Path

example: `http://yoursubdomain.yoursite.com:1880` // if A record is already pointed at servers IP address, else use IP address.

Add additional Nodes via Node-Red palette management

`node-red-contrib-redis`  // install additional node via node-red panel

`node-red-contrib-auth`   // install additional node via node-red panel

Setup Redis

`$ cd $HOME` // change to Home directory

`$ wget http://download.redis.io/redis-stable.tar.gz`

`$ tar xvzf redis-stable.tar.gz`

`$ cd redis-stable`

`$ make`

(need forever/autorestart for redis - `$ redis-server` to start)
