#!/bin/bash

echo '#####################################################'
echo "##              RUNGING    NODEJS.SH              ##"
echo '#####################################################'

curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt-get install -y nodejs

