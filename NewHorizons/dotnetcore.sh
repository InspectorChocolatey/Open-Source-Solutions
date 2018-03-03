###########################
 #<New Linux Script Tech>#
###########################
# References:
#
#	https://www.youtube.com/watch?v=VzaYGMi5LvY
#
########################################################


# Prevent invalid signature errors when trying to update the system:
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

apt-get update -y;

apt-get install wine -y;
apt-get install winetricks wine32 -y;

##############################
 #<Install dotnet framework>#
##############################

# for 64-bit:

wget http://www.kegel.com/wine/winetricks

chmod +x winetricks

mv winetricks /usr/bin

WINEPREFIX=~/.wine32 WINEARCH=win32 wineboot
WINEPREFIX=~/.wine32 WINEARCH=win32 winetricks dotnet45
WINEPREFIX=~/.wine32 WINEARCH=win32 winetricks dotnet20

