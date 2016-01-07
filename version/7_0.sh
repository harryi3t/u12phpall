#!/bin/bash -e

# Build PHP 7.0.0
echo "============ Building PHP 7.0.1 =============="
php-build -i development 7.0.1 $HOME/.phpenv/versions/7.0.1

# Setting phpenv to 7.0.1
echo "============ Setting phpenv to 7.0.1 ============"
phpenv rehash
phpenv global 7.0.1

# Install Composer
echo "============ Installing Composer ============"
curl -s http://getcomposer.org/installer | php
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer

# Install php extensions
echo "=========== Installing PHP extensions =============="
printf '\n' | pecl install memcache-2.2.7
printf '\n' | pecl install memcached
printf '\n' | pecl install mongo
printf '\n' | pecl install amqp
printf '\n' | pecl install zmq-beta
printf '\n' | pecl install redis

