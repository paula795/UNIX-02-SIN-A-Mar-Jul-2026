#!/bin/bash
# It takes the first argument entered when running the script (the IP address) and saves it in the IP_ADDRESS variable.
IP_ADDRESS="${1}"
# It initiates a case structure, which allows comparing the IP with various patterns and executing different actions depending on the case.
case ${IP_ADDRESS} in
# It shows that it belongs to the 192.168.x.x network.
 192.168.*)
 # It displays a message indicating that the IP address belongs to the 192.168.x.x network.
 echo "Network is 192.168.x.x"
 # This specific case ends within the case.
 ;;
 # Compare if the IP address starts with 10.0.
 10.0.*)
 # It shows that the IP belongs to the 10.0.x.x network.
 echo "Network is 10.0.x.x"
 #The second case ends.
 ;;
 # Default case. This is executed when the IP address does not match any previous pattern.
 *)
 # It displays a message indicating that the IP network could not be identified.
 echo "Could not identify the network"
 # The case ends by default.
 ;;
 # Close the case structure (it's the "end of the switch" in Bash).
esac

#Ips
#bash case_ip_address_check.sh 192.168.1.25 
#bash case_ip_address_check.sh 10.0.5.10 
#bash case_ip_address_check.sh 127.0.0.1 
#bash case_ip_address_check.sh 8.8.8.8