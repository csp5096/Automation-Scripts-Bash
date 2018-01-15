#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo pip install boto3
echo -e $TEXT_YELLOW
echo 'Boto3 install finished...'
echo -e $TEXT_RESET

sudo pip install awscli
echo -e $TEXT_YELLOW
echo 'AWS-CLI install finished...'
echo -e $TEXT_RESET

sudo pip install aws-shell
echo -e $TEXT_YELLOW
echo 'AWS-Shell install finished...'
echo -e $TEXT_RESET

sudo pip install awsebcli
echo -e $TEXT_YELLOW
echo 'AWS Elastic Beanstalk CLI install finished...'
echo -e $TEXT_RESET


echo 'Boto3 Version Check!'
sudo boto3 --version
echo 'AWS-CLI Version Check!'
sudo aws --version
echo 'AWS Shell Version Check!'
sudo aws-shell --version
echo 'AWS Elastic Beanstalk CLI Version Check!'
sudo eb --version

