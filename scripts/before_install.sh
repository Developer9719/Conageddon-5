#!/bin/bash

# Download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

sudo yum -y update
sudo yum -y install ruby
sudo yum -y install wget
cd ~/
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
sudo chmod +x ~/install
sudo ~/install auto

# Create a working directory if needed
DIR = "/home/ec2-user"
if( -d "$DIR" ); then
    echo "${DIR} exists"
else 
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi