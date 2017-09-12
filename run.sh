#!/bin/bash

# Mount jeknins volume
sudo mkdir /jenkins_home
sudo mount /dev/xvdf /jenkins_home/

# Start Jenkins
cd jenkins

/usr/local/bin/docker-compose -f docker-compose.yml up --build -d

