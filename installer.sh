os=$(lsb_release -is)
version=$(lsb_release -rs)
RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m'
YELLOW='\033[0;33m' 
PURPLE='\033[1;35m' 
if [ $os = 'Ubuntu' ]; then
case $version in
14.04)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
16.04)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
18.04)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
22.04)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
esac
elif [ $os = 'Debian' ]; then
case $version in
10)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
9)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
8)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
;;
7)
echo "###########################"
echo ""
echo "OpenGamePanel Installer script"
echo "Script is not associated with OpenGamePanel"
echo "Running on $os $version"
echo -e "${GREEN}Your System is compatible with OpenGamePanel${NC}"
echo ""
echo "###########################"
esac
fi
sleep 1

echo -e "${YELLOW}[1] Install the Panel${NC}"
echo -e "${YELLOW}[2] Uninstall ${NC}"
echo -e "${YELLOW}[3] Quit${NC}"
read -p "Enter your choise [1/2/3] " 
case $REPLY in 
1)
if [ $os = 'Ubuntu' ]; then
case $version in
14.04)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
16.04)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php7.0 php7.0-gd php7.0-zip libapache2-mod-php7.0 php7.0-curl php7.0-mysql php7.0-xmlrpc php-pear phpmyadmin mysql-server php7.0-mbstring php-gettext git php-bcmath
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
18.04)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php7.2 php7.2-gd php7.2-zip libapache2-mod-php7.2 php7.2-curl php7.2-mysql php7.2-xmlrpc php-pear phpmyadmin mysql-server php7.2-mbstring php-gettext git php-bcmath
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
20.04)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php7.4 php7.4-gd php7.4-zip libapache2-mod-php7.4 php7.4-curl php7.4-mysql php7.4-xmlrpc php-pear phpmyadmin mariadb-server-10.3 php7.4-mbstring git php-bcmath
sed -i "s/^bind-address.*/bind-address=0.0.0.0/g" "/etc/mysql/mariadb.conf.d/50-server.cnf"
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1

;;
22.04)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php8.1 php8.1-gd php8.1-zip libapache2-mod-php8.1 php8.1-curl php8.1-mysql php8.1-xmlrpc php-pear phpmyadmin mariadb-server-10.6 php8.1-mbstring git php-bcmath
sed -i "s/^bind-address.*/bind-address=0.0.0.0/g" "/etc/mysql/mariadb.conf.d/50-server.cnf"
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1

esac
fi
if [ $os = 'Debian' ]; then
case $version in
10)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php7.3 php7.3-gd php7.3-zip libapache2-mod-php7.3 php7.3-curl php7.3-mysql php7.3-xmlrpc php-pear mariadb-server php7.3-mbstring php-gettext git php-bcmath
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
9)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php7.0 php7.0-gd php7.0-zip libapache2-mod-php7.0 php7.0-curl php7.0-mysql php7.0-xmlrpc php-pear phpmyadmin mysql-server php7.0-mbstring php-gettext git php-bcmath
sudo apt-get install phpmyadmin
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
8)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

;;
7)
echo "${GREEN}Step 1: Installing packages"
sudo apt-get install apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
echo "${GREEN}Step 2: Installing Web Panel"
wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"
sudo dpkg -i "ogp-panel-latest.deb"
sleep 1
sudo mysql_secure_installation

esac
fi
;;
3) 
echo "Exiting..."
sleep 1
exit 1
;;
2)
read -p "Do you sure want to delete OpenGamePanel? [y/N] "
case $REPLY in
y) 
echo "Deleting all OpenGamePanel files!"
sudo rm -rf /usr/share/ogp_agent
sudo update-rc.d -f ogp_agent remove
sudo rm -r /var/www/html
if [ $os = 'Ubuntu' ]; then
case $version in
14.04)
sudo apt-get remove apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
;;
16.04)
sudo apt-get remove apache2 curl subversion php7.0 php7.0-gd php7.0-zip libapache2-mod-php7.0 php7.0-curl php7.0-mysql php7.0-xmlrpc php-pear phpmyadmin mysql-server php7.0-mbstring php-gettext git php-bcmath
;;
18.04)
sudo apt-get remove apache2 curl subversion php7.2 php7.2-gd php7.2-zip libapache2-mod-php7.2 php7.2-curl php7.2-mysql php7.2-xmlrpc php-pear phpmyadmin mysql-server php7.2-mbstring php-gettext git php-bcmath
;;
20.04)
sudo apt-get remove apache2 curl subversion php7.4 php7.4-gd php7.4-zip libapache2-mod-php7.4 php7.4-curl php7.4-mysql php7.4-xmlrpc php-pear phpmyadmin mariadb-server-10.3 php7.4-mbstring git php-bcmath
;;
22.04)
sudo apt-get remove apache2 curl subversion php8.1 php8.1-gd php8.1-zip libapache2-mod-php8.1 php8.1-curl php8.1-mysql php8.1-xmlrpc php-pear phpmyadmin mariadb-server-10.6 php8.1-mbstring git php-bcmath
esac
fi
if [ $os = 'Debian' ]; then
case $version in
7)
sudo apt-get remove apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
;;
8)
sudo apt-get remove apache2 curl subversion php5 php5-gd php5-xmlrpc php5-curl php5-mysql php-pear phpmyadmin mysql-server libapache2-mod-php5 git
;;
9)
sudo apt-get remove apache2 curl subversion php7.0 php7.0-gd php7.0-zip libapache2-mod-php7.0 php7.0-curl php7.0-mysql php7.0-xmlrpc php-pear phpmyadmin mysql-server php7.0-mbstring php-gettext git php-bcmath
;;
10)
sudo apt-get remove apache2 curl subversion php7.3 php7.3-gd php7.3-zip libapache2-mod-php7.3 php7.3-curl php7.3-mysql php7.3-xmlrpc php-pear mariadb-server php7.3-mbstring php-gettext git php-bcmath
esac
fi
systemctl stop apache2
sleep 2
esac
esac
echo "#########################"
echo ""
echo "Thanks for using this script!"
echo -e "If you have questions, ask them in Discord: ${PURPLE}_tirito_#7409${NC}"
echo ""
echo "#########################"