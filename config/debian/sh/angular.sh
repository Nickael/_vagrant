#!/bin/bash

echo '#####################################################'
echo "##              RUNGING ## ANGULAR.SH              ##"
echo '#####################################################'

cat > /home/vagrant/.npmrc << EOF
prefix=.npm-global
registry=http://npm-proxy.fury.io/icebergdatalab/
always-auth=true
//npm-proxy.fury.io/icebergdatalab/:_authToken=V9C3eGEGsyRkEYTheUgs
EOF

chown -v vagrant:vagrant /home/vagrant/.npmrc

cat > /home/vagrant/.angular-config.json << EOF
{
    "$schema": "./node_modules/@angular/cli/lib/config/schema.json",
    "version": 1,
    "cli": {
        "completion": {
            "prompted": true
        }
    },
    "projects": {}
}
EOF

chown -v vagrant:vagrant /home/vagrant/.angular-config.json

sudo -H -u vagrant bash -c 'npm i -g npm'
echo '#####################################################'
sudo -H -u vagrant bash -c 'npm i -g @angular/cli eslint yarn'
echo '#####################################################'
sudo -H -u vagrant bash -c 'echo $HOME'
echo '#####################################################'
