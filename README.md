# os_init


# idea
Purpose of this scripts are to support initial installation of common and most basic tools, just after fresh system instalation. 

Scripts are writen in simple bash and fully readable/understandable, even to new eggs :)

Beside simple bash, this is wrapper for ansible playbooks.

## how to use
as root user:

### CentOS: 

chmod +x ./centos_init.sh; ./centos_init.sh

curl https://raw.githubusercontent.com/leemenix/os_init/main/linux/centos_init.sh | bash

### Debian: 

chmod +x ./debian_init.sh; ./debian_init.sh

wget -q -O - https://raw.githubusercontent.com/leemenix/os_init/main/linux/debian_init.sh | bash

### Slackware: 

chmod +x ./slackware_init.sh; ./slackware_init 

curl https://raw.githubusercontent.com/leemenix/os_init/dev/linux/slackware_init.sh | bash

# supported distributions 
linux: ['debian', 'centos', 'slackware']

# todo
- implement logging
- implement self-cleanup
- adding multiple distros
- slackware like dialog menu for instalation additionals 'basic' packages
- grep user dot files

KISS