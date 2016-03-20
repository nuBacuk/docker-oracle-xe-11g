#!/bin/bash

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
service oracle-xe start

# forever loop just to prevent Docker container to exit, when run as daemon
while true; do sleep 1000; done
