#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."; 
fi

apt update -y
apt install git ansible -y

# fetch ansible playbook
cd /tmp ; rm -rf os_init; git clone https://github.com/leemenix/os_init.git
ansible-playbook os_init/linux/ansible/main.yml