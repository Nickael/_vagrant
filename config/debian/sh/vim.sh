#!/bin/bash

echo '#####################################################'
echo "##              RUNGING    VIM.SH                  ##"
echo '#####################################################'

apt-get -qq update
apt-get install -y  --no-install-recommends \
            vim \
            vim-athena \
            python3.11-dev
apt-get clean

if hash git 2> /dev/null; then
    echo '#####################################################'
    echo '#####################################################'
    sudo -H -u vagrant bash -c 'git clone https://github.com/Nickael/vim.dotfiles.git'
fi
