#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo update-alternatives --config python
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

echo 'Python System Version Check!'
sudo python --version


