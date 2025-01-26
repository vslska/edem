#!/bin/bash

sudo apt update

sudo apt install apt-transport-https ca-certificates curl 
software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb\_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

#sudo systemctl status docker

#sudo nano /lib/systemd/system/docker.service

#ExecStart=/usr/bin/dockerd --mtu 1450 -H fd:// --containerd=/run/containerd/containerd.sock

#sudo systemctl daemon-reload

#sudo service docker restart

#sudo usermod -aG docker ${user}

#su - ${user}





