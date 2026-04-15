#!/bin/bash

set -e

apt update && apt upgrade -y

apt install -y \
  wget curl vim \
  net-tools iputils-ping \
  postgresql postgresql-contrib


echo "[*] postgres lab on fire"
