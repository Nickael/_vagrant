#!/bin/bash

echo '#####################################################'
echo "##              RUNGING ## ANGULAR.SH              ##"
echo '#####################################################'

sudo -H -u vagrant bash -c 'cat > /home/vagrant/.npmrc << EOF
prefix=.npm-global
registry=http://npm-proxy.fury.io/icebergdatalab/
always-auth=true
//npm-proxy.fury.io/icebergdatalab/:_authToken=V9C3eGEGsyRkEYTheUgs
EOF'

echo '#####################################################'
cat /home/vagrant/.npmrc
echo '#####################################################'

sudo -H -u vagrant bash -c 'npm i -g npm'
echo '#####################################################'
sudo -H -u vagrant bash -c 'npm i -g @angular/cli eslint yarn'
echo '#####################################################'
sudo -H -u vagrant bash -c 'echo $HOME'
echo '#####################################################'
