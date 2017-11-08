# Souq:

For Souq to fully function, the path & secret to your Preferred node needs to be saved in its configuration, this is how you setup a Preferred server for Souq to sync up with.

# Overview

A preferred server has a custom set of [flows for the core api end points](https://github.com/cryptocracy/flows/blob/master/node-red/flows.json). Built with Node-Red, some additonal nodes, Redis, and Blockstack. All working in unison to enable Souq users to Tag and Fund Projects to the Blockchain.

This repo contains a manual setup guide & docker setup guide (this readme)

The [flows for the core api end points](https://github.com/cryptocracy/flows/blob/master/node-red/flows.json) can easily imported into your existing Node-Red instance assuming the prerequisite nodes are installed as well as Redis and Blockstack.

A Docker facilitated installation will be used to streamline the setup of all the components of a preferred server. (eg Blockstack, Redis, Node-Red with additional nodes and the flows for the Souq api end points) 

# Docker Setup Guide:

... insert docker setup steps here ...


# Manual Setup Guide:

This guide assumes that you are using Ubuntu 16.04. Before you begin, you should have a non-root user account with `sudo` privileges set up on your system. (Still under construction)

### Update 

`$ sudo apt-get update` then `y`  // update 

### Install Node components

`$ sudo apt-get install nodejs` then `y`  // install nodejs

`$ sudo apt-get install npm` then `y`  // install npm

`$ sudo npm install -g node-red` then `y`  // install node-red

`$ sudo npm cache clean -f` // clear npm cache

`$ sudo npm install -g n` // to install nodejs version control

`$ sudo n 6.10.0` // switch to nodejs version 6.10.0 (required for node-red)

Run Node-Red Manually

`$ sudo node-red`  // to start manually [replace later with PM2] 

Browse to Server Path

example: `http://yoursubdomain.yoursite.com:1880` // if A record is already pointed at servers IP address, else use IP address.

Install additional Nodes via Node-Red palette management

`node-red-contrib-redis`  // install additional node via node-red panel

`node-red-contrib-auth`   // install additional node via node-red panel

Configure admin access

... [insert details on how to reconfigure node red to force root to /admin and force admin auth]

### Install PM2 (to keep Node alive)

`$ sudo npm install pm2 -g`  //install 

`$ cd /usr/local/lib/node_modules/node-red`  // change directory

`$ sudo pm2 start red.js`  // Invoke Node-Red with PM2 [do not have it already running]

### Install Redis

`$ cd $HOME` // change to Home directory

`$ wget http://download.redis.io/releases/redis-3.2.8.tar.gz`

`$ tar xvzf redis-3.2.8.tar.gz`

`$ cd redis-3.2.8`

`$ make`

You might need to install `tcl` via `$ sudo apt-get install tcl` before you are able `make test`.

`$ make test`

### Install Blockstack

`$ sudo apt-get update && sudo apt-get install -y python-pip python-dev libssl-dev libffi-dev rng-tools` // first install PIP & tools

`$ sudo pip install --upgrade pip`  // install latest version (currently 9.0.1)

`$ sudo pip install blockstack` // install Blockstack CLI

`$ blockstack whois fredwilson.id` // do a whois lookup of fredwilson.id to test (you might be prompted to save your email to get notifications about blockstack updates, this is optional) ... assuming you eventually get the whois data of fredwilson.id move on.

`$ blockstack info`  // if this is the first time, it will initialize a new wallet, you will be prompted to save a password, DO NOT LOSE THIS PASSWORD OR YOUR MASTER KEY

`$ sudo rngd -r /dev/urandom` // might be required if you are having troubles generating the wallet (if it stalls out when creating the password)

***(Do not lose your master key and password)***

### Import & Setup Flow:

[api-end-points.json](https://github.com/cryptocracy/flows/blob/master/node-red/flows.json) // Flow to Manually Import

Configure the JWT node with your Secret

Deploy Changes

Use your secret to sync up Souq
