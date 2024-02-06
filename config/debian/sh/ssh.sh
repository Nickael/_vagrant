#!/bin/bash

echo '#####################################################'
echo "##              RUNGING    SSH.SH                  ##"
echo '#####################################################'

cp -v /tmp/ssh/id_rsa /home/vagrant/.ssh/id_rsa
cp -v /tmp/ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub
cp -v /tmp/ssh/known_hosts /home/vagrant/.ssh/known_hosts
echo '#####################################################'
chown vagrant:vagrant -Rv /home/vagrant/.ssh/
chmod -v 600 /home/vagrant/.ssh/id_rsa
chmod -v 644 /home/vagrant/.ssh/id_rsa.pub
chmod -v 600 /home/vagrant/.ssh/known_hosts
echo '#####################################################'
