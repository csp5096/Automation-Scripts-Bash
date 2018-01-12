#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo apt-get update
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

sudo apt-get install software-properties-common
echo -e $TEXT_YELLOW
echo 'Software update finished...'
echo -e $TEXT_RESET

sudo apt-add-repository ppa:ansible/ansible
echo -e $TEXT_YELLOW
echo 'Ansible library update finished...'
echo -e $TEXT_RESET

sudo apt-get update
echo -e $TEXT_YELLOW
echo 'APTupdate finished...'
echo -e $TEXT_RESET

sudo apt-get install ansible
echo -e $TEXT_YELLOW
echo 'ansible installation finished...'
echo -e $TEXT_RESET

echo 'Ansible Version Check!'
sudo ansible --version


