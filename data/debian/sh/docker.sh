echo "## RUNGING DOCKER.SH ##"

# installing prerequisites

sudo apt update
sudo apt install -y ca-certificates curl

# getting yum package repository
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# installing docker

sudo echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

sudo apt-get install -y \
        docker-ce \
        docker-ce-cli \
        containerd.io \
        docker-buildx-plugin \
        docker-compose-plugin


# post installation - optional - adding vagrant user to docker's group

groupadd docker

usermod -aG docker $USER
usermod -aG docker vagrant
newgrp docker

# test docker installation

docker run hello-world
