###########################
 #<New Linux Script Tech>#
###########################

# Prevent invalid signature errors when trying to update the system:
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

apt-get update -y;

apt-get install wine -y;
apt-get install winetricks wine32 -y;
