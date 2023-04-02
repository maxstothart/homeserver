#! /bin/sh
sudo apt update
sudo snap install rocketchat
sudo apt install apache2
sudo apt install mysql-server
sudo mysql_secure_installation
sudo apt install php libapache2-mod-php php-mysql
sudo cp homeserver.conf /etc/apache2/sites-enabled/homeserver.conf
sudo a2enmod proxy proxy_http
sudo a2dissite 000-default
sudo a2ensite homeserver
sudo systemctl restart apache2
