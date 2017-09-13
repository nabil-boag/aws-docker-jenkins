# Dockerised Jeknins Environment

# Local Jenkins

docker-compose -f docker-compose.yml -f jenkins-local.override.yml up

# AWS Jenkins

Add userdata.sh to the userdata of any instance to get docker installed.

After booting, attach a jeknins volume to the instance and then run the run.sh script.

