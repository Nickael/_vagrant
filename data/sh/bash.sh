echo "## RUNGING BASH.SH ##"

# copy bash and git config to root user

cp /tmp/bash_aliases /root/.bash_aliases
cp /tmp/bashrc /root/.bashrc
cp /tmp/gitconfig /root/.gitconfig

# copy bash and git config to vagrant user

cp /tmp/bash_aliases /home/vagrant/.bash_aliases
cp /tmp/bashrc /home/vagrant/.bashrc
cp /tmp/gitconfig /home/vagrant/.gitconfig

# change bash and git config ownership to vagrant

chown vagrant:vagrant -v /home/vagrant/.bash_aliases
chown vagrant:vagrant -v /home/vagrant/.bashrc
chown vagrant:vagrant -v /home/vagrant/.gitconfig

# removing tmp files

rm -v /tmp/bash_aliases /tmp/bashrc /tmp/gitconfig
