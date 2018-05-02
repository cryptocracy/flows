FROM ubuntu:16.04

# Install node.js
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs

# Home directory for Node-RED application source code.
RUN mkdir -p /usr/src/node-red

# User data directory, contains flows, config and nodes.
RUN mkdir /data
WORKDIR /usr/src/node-red

# package.json contains Node-RED NPM module and node dependencies
COPY node-red/package.json /usr/src/node-red/
RUN npm install

# User configuration directory volume
EXPOSE 1880

# Environment variable holding file path for flows configuration
ENV FLOWS=flows.json

# Install packages
RUN npm install node-red-contrib-redis node-red-contrib-auth node-red-node-mysql

# Install blockstack
RUN apt-get update && apt-get install -y python-pip python-dev libssl-dev libffi-dev rng-tools

RUN pip install --upgrade pip && pip install blockstack

CMD ["npm", "start", "--", "--userDir", "/data"]

