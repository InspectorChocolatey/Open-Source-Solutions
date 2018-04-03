#install powershell 6.0 in linux: https://www.ostechnix.com/how-to-install-windows-powershell-in-linux/
#Centos 7

curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/microsoft.repo
yum install -y powershell
