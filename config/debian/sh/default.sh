#!/bin/bash

echo '#####################################################'
echo "##              RUNGING    DEFAULT.SH              ##"
echo '#####################################################'
apt-get -qq update
echo '#####################################################'
apt-get install -y  --no-install-recommends \
            git \
            curl \
            wget \
            zsh \
            ccze \
            make \
            cmake \
            gcc \
            gpp \
            g++ \
            exa
echo '#####################################################'
apt-get clean
echo '#####################################################'
apt-get dist-upgrade -y
echo '#####################################################'
# install and conrigure oh-my-zsh for vagrant

sh -c "$(curl -fsSL https://raw.githubusercontent.com/nickael/ohmyzsh/master/tools/install.sh)"

# install and conrigure oh-my-zsh for vagrant

su - vagrant -c 'printf "y\nvagrant\n" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/nickael/ohmyzsh/master/tools/install.sh)"'

# set zsh as default terminal

chsh -s /bin/zsh vagrant
chsh -s /bin/zsh
