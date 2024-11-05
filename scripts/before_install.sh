#!/bin/bash

# Download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

# Create a working directory if needed
DIR = "/home/ec2-user"
if( -d "$DIR" ); then
    echo "${DIR} exists"
else 
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi