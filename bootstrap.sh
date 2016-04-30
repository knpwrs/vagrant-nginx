#!/usr/bin/env bash
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get update
sudo apt-get install -y nginx mysql-server mysql-client php5-fpm php5-mysql

sudo rm /etc/nginx/nginx.conf
sudo ln -s /vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
sudo service nginx restart

sudo rm /etc/php5/fpm/php.ini
sudo ln -s /vagrant/php/php.ini /etc/php5/fpm/php.ini
sudo service php5-fpm restart
