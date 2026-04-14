#!/bin/bash

set -e

apt update && apt upgrade -y

apt install -y \
    vim curl wget \
    net-tools iputils-ping \
    openssh-server \
    vsftpd

echo "root:toor" | chpasswd
sed -i 's/#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config

mkdir -p /var/run/sshd

# vsftpd
useradd -m -s /bin/bash ftpuser
echo "ftpuser:ftppass" | chpasswd
mkdir -p /home/ftpuser/files
chown ftpuser:ftpuser /home/ftpuser/files

echo "[*] FTP machine created"
