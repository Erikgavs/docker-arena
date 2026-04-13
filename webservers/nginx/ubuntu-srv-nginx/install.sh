#!/bin/bash

set -e

apt update && apt upgrade -y

apt install -y \
    curl wget vim \
    net-tools iputils-ping \
    nginx \
    openssh-server

echo "root:toor" | chpasswd
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "[*] Máquina en funcionamiento"
