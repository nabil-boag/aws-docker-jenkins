#!/bin/bash

# Install Docker
sudo groupadd docker
sudo usermod -aG docker ec2-user

sudo yum update -y
sudo yum install -y docker
sudo service docker start

echo "Docker installed"
echo $(docker -v);

echo "Downloading dokcer-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker compose installed"
echo $(/usr/local/bin/docker-compose -v)
