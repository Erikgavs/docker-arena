#!/bin/bash

# This makes the sql instalation easier, in the instalation proccess nothing is asked
export DEBIAN_FRONTEND=noninteractive

set -e

apt update && apt upgrade -y

apt install -y \
    curl wget vim \
    net-tools iputils-ping \
    mysql-server \
    openssh-servery es

echo "root:toor" | chpasswd
sed -i 's/#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

mkdir -p /var/run/sshd /var/run/mysqld
chown mysql:mysql /var/run/mysqld

sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf


echo "[*] SQL machine activated"
