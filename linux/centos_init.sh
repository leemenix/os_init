#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."; 
fi

yum update -y
# ansible not part of inital repo; do it other way ;) 
# 
yum install git python3 python3-pip -y
pip3 install ansible

# fetch ansible playbook
cd /tmp ; git clone https://github.com/leemenix/os_init.git
ansible-playbook os_init/linux/ansible/main.yml