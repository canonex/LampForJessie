#!/bin/bash
##to debug #!/bin/bash -xv

if [ "$PS1" ]; then
	export PS1="\[\033[1;32m\]\u\[\033[1;37m\]@\[\033[1;31m\]\h\[\033[1;0m\]:\w\$ "
fi

echo ""
echo "                         NIDJLI"
echo "Non Interactive"
echo "       Debian Jessie"
echo "              Lamp Installer"
echo ""
echo "      |||||    Please read the following notes!     |||||"
echo ""
echo "This script is going to"
echo " - install Ssh, Fail2ban, Apache, MySql, Php, PhpMyAdmin and Git"
echo " - enable headers and rewrite"
echo " - generate the file InfoCurrentInstall.txt in the current directory."
echo ""
echo "Moreover it will"
echo " - make a very basic configuration for security"
echo " - make a very basic configuration for common tasks (have a look in DebianLampConf.sh)"
echo ""
echo "Please have a look at the code: is commented and more or less self explaining."
echo ""
echo "Continue? (y or n)"

read answer

if echo "$answer" | grep -iq "^y" ;then
    echo "Let's begin..."
else
	echo "Au revoir"
	exit 0
fi
	
if [ "$(whoami)" != "root" ]; then
	echo "      WARNING Please start this script as root."
	exit 1
fi

RELEASE=$(lsb_release -cs)
if [ $RELEASE != "jessie" ]; then
	echo "      WARNING The complete setup has never been tested in $RELEASE"
fi


echo ''"\033[1m   Installing Lamp Server-------------------------------------\033[0m"
sh DebianLamp.sh

echo ''"\033[1m   Basic configuration has started-------------------------------------\033[0m"
sh DebianLampConf.sh

echo "Ending"

exit 0
