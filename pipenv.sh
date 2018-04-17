#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo add-apt-repository ppa:jonathonf/python-3.6 && apt-get update && apt-get install python3.6
echo -e $TEXT_YELLOW
echo 'Python 3.6 install finished...'
echo -e $TEXT_RESET

sudo pip install pipenv
echo -e $TEXT_YELLOW
echo 'Pipenv install finished...'
echo -e $TEXT_RESET


echo 'Python 3.6 Version Check!'
sudo python3.6 -V
echo 'AWS Shell Version Check!'
sudo pipenv --version


