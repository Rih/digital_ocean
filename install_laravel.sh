######
##### INSTALL LARAVEL
#### REQUIREMENTS:
#### COMPOSER 
#sudo yum install php5 git php5-curl
cd /var/www/html
mkdir laravelProject
cd laravelProject

curl -sS https://getcomposer.org/installer | php -- --install-dir=/var/www/html/laravelProject
php composer.phar

php --ini
yum -y install php-mbstring 

yum -y install epel-release
yum -y install php-mcrypt
yum install php5-json
yum -y install php-xml
service httpd restart

composer create-project laravel/laravel code

##permission to storage and bootstrap in project
chmod 777 -R storage
chmod 777 -R bootstrap
##
## dd if=/dev/zero of=/swapfile bs=1M count=1024 (create swap)
## chmod 600 /swapfile
## mkswap /swapfile
## swapon /swapfile
## swapon -s
## follow https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04


##when change directory made next step to solve issue
homestead up --privision
#php artisan config:clear
#php artisan config:cache



