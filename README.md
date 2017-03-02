# Summary
This repo contains a setup guide (this readme) and the [api-end-points.json](https://github.com/cryptocracy/flows/blob/master/api-end-points.json) "flow".

The json file is a Node-Red "flow" that can be easily imported into your Node-Red instance after the prerequisites are met.

# Prerequisites Summary:

The server needs to have Node-red, additonal nodes, Redis, and Blockstack installed, before the imported flow will run properly.

# Warning:

For these api end points to be used, the client application (Souq) must have the path to the server saved in its configuration.

# Prerequisites Setup Guide:

This guide assumes that you are using Ubuntu 16.04. Before you begin, you should have a non-root user account with `sudo` privileges set up on your system. (Still under construction)

### Update 

`$ sudo apt-get update` then `y`  // update 

### Setup Node components

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

Install additional Nodes via Node-Red palette management

`node-red-contrib-redis`  // install additional node via node-red panel

`node-red-contrib-auth`   // install additional node via node-red panel

Configure admin access

... [insert details on how to reconfigure node red to force root to /admin and force admin auth]

## Setup PM2 (to keep server alive)

`$ sudo npm install pm2 -g`  //install 

`$ cd /usr/local/lib/node_modules/node-red`  // change directory

`$ sudo pm2 start red.js`  // Invoke Node-Red with PM2 [do not have it already running]

### Setup Redis

`$ cd $HOME` // change to Home directory

`$ wget http://download.redis.io/redis-stable.tar.gz`

`$ tar xvzf redis-stable.tar.gz`

`$ cd redis-stable`

`$ make`

### Setup Blockstack

`$ `


### Import Flow:

[api-end-points.json](https://github.com/cryptocracy/flows/blob/master/api-end-points.json) // What to Import

Configure the JWT node

Deploy Changes

Once your Preferred server is setup, point your Souq app at it & `Be the Change`.
