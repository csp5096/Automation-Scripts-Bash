#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo -e $TEXT_YELLOW
echo 'Docker repository downloading...'
echo -e $TEXT_RESET

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo -e $TEXT_YELLOW
echo 'Docker repository to APT installing...'
echo -e $TEXT_RESET

sudo apt-get update
echo -e $TEXT_YELLOW
echo 'Running system update...'
echo -e $TEXT_RESET

sudo apt-get install -y docker-ce
echo -e $TEXT_YELLOW
echo 'Docker install finished...'
echo -e $TEXT_RESET

sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
echo -e $TEXT_YELLOW
echo 'Docker-compose repository downloading...'
echo -e $TEXT_RESET

sudo sudo chmod +x /usr/local/bin/docker-compose
echo -e $TEXT_YELLOW
echo 'Set Docker-compose executable permissions to the binary...'
echo -e $TEXT_RESET

echo 'Docker Version Check!'
sudo docker -v
echo 'Docker-compose Version Check!'
sudo docker-compose --version

