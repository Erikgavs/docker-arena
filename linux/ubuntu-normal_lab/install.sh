#!/bin/bash

# if a command fails, stops the script
set -e

# updates de system and -y is for not asking for confirmation (essential)
apt update && apt upgrade -y
# downloading the packages that we want
apt install -y \
    curl wget git vim \
    net-tools iputils-ping \
    python3 python3-pip \
    openssh-server \
    apache2

# whe cange the password of root to toor, in user:password format (chpasswd)
echo "root:toor" | chpasswd
# modificate ssh config to allow login into ssh with root
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "[+] Máquina en funcionamiento"
