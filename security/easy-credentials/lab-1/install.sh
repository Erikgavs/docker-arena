#!/bin/bash

set -e

apt upgrade && apt update -y

apt install -y \
  curl vim wget \
  net-tools iputils-ping \
  openssh-server

sed -i 
