#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo apt-get install git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
echo -e $TEXT_YELLOW
echo 'Pip update finished...'
echo -e $TEXT_RESET

sudo pip install virtualenvwrapper
echo -e $TEXT_YELLOW
echo 'Virtualenvwrapper update finished...'
echo -e $TEXT_RESET

sudo git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo -e $TEXT_YELLOW
echo 'Pyenv library update finished...'
echo -e $TEXT_RESET

sudo git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper
echo -e $TEXT_YELLOW
echo 'Virtualenvwrapper library update finished...'
echo -e $TEXT_RESET

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'pyenv virtualenvwrapper' >> ~/.bashrc

exec "$SHELL"
echo -e $TEXT_YELLOW
echo 'Shell Restart finished...'
echo -e $TEXT_RESET


