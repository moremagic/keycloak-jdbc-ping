#! /bin/bash
/opt/jboss/docker-entrypoint.sh $@ -Djboss.bind.address.private=$(getAddress.py) -Djboss.bind.address.management=$(getAddress.py) -Djgroups.bind.address=$(getAddress.py)
