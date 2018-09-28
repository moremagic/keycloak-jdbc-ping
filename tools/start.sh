#! /bin/bash

/usr/sbin/sshd -D &

DEFAULT_NIC=`ip route | grep default | awk '{print $NF}'`
HOST_ADDR=`ip -f inet -o addr show $DEFAULT_NIC | cut -d" " -f 7 | cut -d/ -f 1`
# echo $HOST_ADDR  $(hostname) >> /etc/hosts
# cat /etc/hosts

echo $(hostname -i)
echo DEFAULT_NIC=$DEFAULT_NIC 

/opt/jboss/tools/docker-entrypoint.sh $@ -Djboss.bind.address.private=$HOST_ADDR -Djgroups.bind.address=$HOST_ADDR -Djava.net.preferIPv4Stack=true -Dignore.bind.address=true

