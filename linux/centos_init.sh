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

# if you want deploy docker, during inital phase enable next line
#su - deploy -c "ansible-playbook /tmp/os_init/linux/ansible/main.yml -e '{"deploy_docker": "True"}'"
su - deploy -c "ansible-playbook /tmp/os_init/linux/ansible/main.yml -e '{"deploy_pxe": "True"}'"
#if you enable previous line, you should comment next one , until more elegant solution is here
# this will be automated via vars stored in gitlab, for local dev env
#su - deploy -c "ansible-playbook /tmp/os_init/linux/ansible/main.yml"
