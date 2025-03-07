apt update
apt upgrade -y
apt install -y sudo

export DEBIAN_FRONTEND=noninteractive

apt install -y tzdata

ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt install -y apache2 php7.4 php7.4-bz2 php7.4-cli php7.4-curl php7.4-fpm php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-xml php7.4-zip libapache2-mod-php git unzip

cp /root/initial-config/000-default.conf /etc/apache2/sites-available/000-default.conf
cp /root/initial-config/99-config_overrides.ini /etc/php/7.4/apache2/conf.d/99-config_overrides.ini

a2enmod rewrite

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

composer --version
