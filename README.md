# LampForJessie
Non Interactive Bash Debian Jessie Linux Lamp Installer, easily spelled NIBDJLLI

## How to:
1. Install Debian Jessie.
   - if building a server consider using [Debian netinstall ](https://www.debian.org/distrib/netinst)
   - in tasksel let only "Standard system utilities" selected.

2. Become root, copy/download/get this scripts in your home execute install.sh as root.  
Some operation may take a while, be patient.

## What you should get:
 - a file, InfoCurrentInstall.txt,  in the same directory of the script with passwords, logins, bla bla
 - ssh (only new protocols enabled). Fail2Ban (extended bantime), Apache ( production mode ), MySql (already with mysql_secure_installation), Php (extended memory upload options), PhpMyAdmin, Git
 - headers and rewrite enabled
 - very basic configuration for security
 - basic configuration for common tasks (have a look in DebianLampConf.sh)
 - php.ini date.timezone option on Europe Rome: please configure your position [Php Timezones](http://php.net/manual/en/timezones.php)


End
