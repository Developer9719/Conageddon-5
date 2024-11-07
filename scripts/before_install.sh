# Need to run these to prep the remote to run the app
# Came from this Youtube video: https://www.youtube.com/watch?v=Buh3GjHPmjo&t=689s 
# Github repo for the video code: https://github.com/felixyu9/nodejs-express-on-aws-ec2

# sudo yum -y update
# sudo yum -y install ruby
# sudo yum -y install wget
# cd ~/
# sudo wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
# chmod +x ./install
# sudo ~/install auto

#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesnt exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi