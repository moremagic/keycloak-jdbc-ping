#! /bin/bash

/usr/sbin/sshd -D &


echo $(hostname -i)
cat /etc/hosts

HOST_ADDR=`ip -f inet -o addr show $(ip route | grep default | awk '{print $NF}') | cut -d" " -f 7 | cut -d/ -f 1`
/opt/jboss/docker-entrypoint.sh $@ -Djboss.bind.address.private=$HOST_ADDR -Djboss.bind.address.management=$HOST_ADDR -Djgroups.bind.address=$HOST_ADDR -Djava.net.preferIPv4Stack=true -Djgroups.bind_addr=$HOST_ADDR 

