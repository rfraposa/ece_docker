#!/bin/bash

echo "vm.max_map_count=262144" |  tee -a /etc/sysctl.conf 

chkconfig sshd on 
/etc/init.d/sshd start