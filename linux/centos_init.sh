#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."
  exit 1
fi

yum -y update
yum -y install epel-release
yum -y update
# install ansible via pip, so we can trigger ansible playbooks after
yum -y install git python3 python3-pip
su - deploy -c "pip3 install --user ansible"

# fetch ansible playbook for initial bootstrap 
# do all in /tmp dir and remove os_init dir first in case it exist
su - deploy -c "cd /tmp; rm -rf os_init; git clone https://github.com/leemenix/os_init.git"
su - deploy -c "ansible-playbook /tmp/os_init/linux/ansible/main.yml"