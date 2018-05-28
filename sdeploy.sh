#!/bin/bash

#jupyterhub
cd /srv/data/deployment/github/easyailab
cp ./jupyterhub/config/*.* /srv/jupyterhub

#wordpress
cp ./wordpress/config/wp-config.php         /home/wwwroot/default/wp-config.php
cp ./wordpress/config/default-constants.php /home/wwwroot/default/wp-includes/default-constants.php


#php
cp ./php/config/php.ini      /usr/local/php/etc/php.ini

#nginx
cp ./nginx/config/nginx.conf /usr/local/nginx/conf/nginx.conf

echo "End sdeploy"
