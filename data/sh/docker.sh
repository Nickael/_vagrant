echo "## RUNGING DOCKER.SH ##"

# installing prerequisites

yum install -y yum-utils device-mapper-persistent-data lvm2

# getting yum package repository

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# installing docker

yum install -y docker-ce docker-ce-cli containerd.io

# start service

systemctl start docker

# post installation - optional - adding vagrant user to docker's group

groupadd docker

usermod -aG docker $USER
usermod -aG docker vagrant
newgrp docker

# test docker installation

docker run hello-world

# auto start docker on start up

chkconfig docker on
