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




dpkg --add-architecture i386 && apt-get update &&
apt-get install wine32 -Y;


# Make sure that windows 7 is selected and click OK:
winecfg     # threw an error message saying todo: (the line above) 

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

