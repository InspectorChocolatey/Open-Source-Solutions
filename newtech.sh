###########################
 #<New Linux Script Tech>#
###########################

#!/bin/bash

# Prevent invalid signature errors when trying to update the system:
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

apt-get update -y;


