#!/bin/bash
hostnamectl set-hostname ${server-name}
apt update -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
groupadd docker
usermod -aG docker $USER
newgrp docker
systemctl start docker
systemctl enable docker
