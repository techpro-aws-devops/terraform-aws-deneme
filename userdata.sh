#!/bin/bash
hostnamectl set-hostname ${server-name}
dnf update -y
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh
groupadd docker
usermod -aG docker $USER
newgrp docker
systemctl start docker
systemctl enable docker