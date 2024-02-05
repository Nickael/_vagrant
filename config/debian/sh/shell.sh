#!/bin/bash

echo '#####################################################'
echo "##              RUNGING    BASH.SH                 ##"
echo '#####################################################'

cp /tmp/shell /root/.fn.sh
cp /tmp/shell /home/vagrant/.fn.sh

chown vagrant:vagrant -v /home/vagrant/.fn.sh

cat >> /home/vagrant/.zshrc << EOF
. /home/vagrant/.fn.sh
EOF

cat >> /home/vagrant/.bashrc << EOF
. /home/vagrant/.fn.sh
EOF


printf "eval \"\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)\"\n" >> /root/.zshrc
printf "eval \"\$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/Nickael/ohmyposh.theme/master/.nr.nordic.omp.json')\"\n" >> /root/.zshrc
