#! /bin/bash
/opt/jboss/docker-entrypoint.sh -c standalone-ha.xml -b 0.0.0.0 -Djboss.bind.address.private=$(getAddress.py) -Djboss.bind.address.management=$(getAddress.py) -Djboss.bind.address=$(getAddress.py)
