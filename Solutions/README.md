# Problem: I have DVDs which I have legally purchased & neither of my Windows or Linux machines will play them.
#     Url: https://www.maketecheasier.com/play-dvds-in-linux/
    
    #!/bin/bash
    
    apt-get update -y;
    apt-get install libdvd-pkg -y;
    dpkg-reconfigure libdvd-pkg;
