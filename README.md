# os_init


# idea
Purpose of this scripts are to support initial installation of common and most basic tools, just after fresh system instalation. 

Scripts are writen in simple bash and fully readable/understandable, even to new eggs :)

Beside simple bash, this is wrapper for ansible playbooks.

## how to use
as root user:

chmod +x 

./centos_init.sh

curl https://raw.githubusercontent.com/leemenix/os_init/main/linux/centos_init.sh | bash

wget -q -O https://raw.githubusercontent.com/leemenix/os_init/main/linux/debian_init.sh | bash

# supported distributions
linux: ['debian', 'centos']

# todo
- adding multiple distros
- slackware like dialog menu for instalation additionals 'basic' packages
- grep user dot files

KISS