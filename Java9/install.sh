#################################
 #<Java 9 Installation Package>#
################################# 

# fix signatures for apt-get repositories:
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

# update system:
apt-get update -y;

# install synaptic:
apt-get install synaptic -y ;

# repairs:
apt --fix-broken install;

# try again: install synaptic:
apt-get install synaptic -y ;

# In synaptic search: java
# select the following four packages:

[ ] openjdk-9-jdk
[ ] openjdk-9-jdk-headless
[ ] openjdk-9-jre
[ ] openjdk-9-jre-headless

# click the gear button to apply the installation:

cd "/usr/bin";
jshell

# ~DONE: Woot Woot!
#/////////////////////////////////////////////////////////////////
#///////////Everything Below NOT needed anymore//////////////////
#///////////////////////////////////////////////////////////////

function installJDK9()
{
	srcs="/etc/apt/sources.list";
	 env="/etc/environment"     ;

	chmod g+rwx "$env" -v;
	chmod o+rwx "$env" -v;

	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu/ precise main" >> "$srcs";
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> "$srcs";
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu/ precise main" >> "$srcs";
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> "$srcs";
	echo "deb http://archive.ubuntu.com/ubuntu/ quantal universe" >> "$srcs";
	echo "deb http://archive.ubuntu.com/ubuntu/ quantal-updates universe" >> "$srcs";
	echo "deb http://security.ubuntu.com/ubuntu/ quantal-security universe" >> "$srcs";
	echo "JAVA_HOME="/usr/lib/jvm/java-9-oracle"" >> "$env";
	echo "export JAVA_HOME" >> "$env";

	apt-get update -y;
	apt-get install synaptic -y;


}
