#!/bin/bash

set -e

apt update && apt upgrade -y

apt install -y \
    curl wget vim \
    net-tools iputils-ping \
    openssh-server \
    nginx

echo "root:toor" | chpasswd
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config

echo "[*] SSH - NGINX machine activated"
