#!/bin/bash
echo '#####################################################'
echo "##              RUNGING    HOMEBREW.SH             ##"
echo '#####################################################'


sudo -H -u vagrant bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y

echo 'export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH' >> /home/vagrant/.zshrc
echo 'export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH' >> /home/vagrant/.bashrc

# sudo -H -u vagrant bash -c "source /home/vagrant/.bashrc && brew install jandedobbeleer/oh-my-posh/oh-my-posh"
# sudo -H -u vagrant bash -c "brew install jandedobbeleer/oh-my-posh/oh-my-posh"
