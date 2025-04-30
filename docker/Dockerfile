# syntax=docker/dockerfile:1.2

#---------------------------- BUILD NIMIQ - BASE -------------------------------
# specify the node base image with your desired version node:<version>
FROM node:latest
# replace this with your application's default port
EXPOSE 21105

# Install build dependencies
#RUN apt update
#RUN apt --no-install-recommends -y install nano

# Create build directory
WORKDIR /build

# Clone repo
RUN git clone https://github.com/BlackElkX/DCCExpress.git
WORKDIR /build/DCCExpress

# Install, Build & Test
RUN npm install
#WORKDIR /build/DCCExpress/dist

# Execute client as non-root user
USER ${USER}

ENTRYPOINT [ "npm", "start" ]
#ENTRYPOINT [ "node", "server/js/server/src/index.js" ]
