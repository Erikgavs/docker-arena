#/bin/bash


set -e

apt update && apt upgrade -y

apt install -y \
    wget curl vim \
    net-tools iputils-ping \
    apache \
    openssh-server

echo "root:toor" | chpasswd
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "[*] Máquina en funcionamiento"
