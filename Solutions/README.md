# Problem: I have DVDs that I have purchased that windows and linux will not play, WTF!
#     Url: https://www.maketecheasier.com/play-dvds-in-linux/
apt-get update -y;
apt-get install libdvd-pkg -y;
dpkg-reconfigure libdvd-pkg;
