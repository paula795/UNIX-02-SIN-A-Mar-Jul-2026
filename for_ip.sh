#!/bin/bash
for ip_address in "$@"; do
 echo "Taking some action on IP address ${ip_address}"
 ping -c 1 "$(ip_address)"
done

# ./for_ip.sh 127.0.0.1 127.0.0.2 127.1.1.1 127.255.255.255