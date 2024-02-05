#!/bin/bash

echo '#####################################################'
echo "##           RUNGING    DOCKER-CONTAINER.SH        ##"
echo '#####################################################'

if hash docker 2> /dev/null; then

    # creating portainer container a docker web manager

    docker run -d \
            -p 8000:8000 \
            -p 9000:9000 \
            --name portainer \
            --restart always \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -v /home/vagrant/data/portainer:/data portainer/portainer

    # creating mariadb volume

    # docker volume create mariadb55_data
    # docker run -d \
    #         -p 3306:3306 \
    #         --name mariadb55 \
    #         -v mariadb55_data:/var/lib/mysql \
    #         -e MYSQL_ROOT_PASSWORD=root \
    #         mariadb:5.5
fi
