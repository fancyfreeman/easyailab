#!/bin/bash

#jupyterhub
cd /srv/data/deployment/github/easyailab
cp ./jupyterhub/config/*.* /srv/jupyterhub

#wordpress
cp ./wordpress/config/wp-config.php         /home/wwwroot/default/wp-config.php
cp ./wordpress/config/default-constants.php /home/wwwroot/default/wp-includes/default-constants.php
cp ./wordpress/learnPress/zh_CN.mo          /home/wwwroot/default/wp-content/plugins/learnpress/languages/learnpress-zh_CN.mo
cp ./wordpress/learnPress/zh_CN.po          /home/wwwroot/default/wp-content/plugins/learnpress/languages/learnpress-zh_CN.po

#avada
cp -rf ./wordpress/avada/google/s           /home/wwwroot/default/
cp ./wordpress/avada/source/class-avada-google-fonts.php /home/wwwroot/default/wp-content/themes/Avada/includes/class-avada-google-fonts.php
cp ./wordpress/avada/source/functions.php   /home/wwwroot/default/wp-content/themes/Avada/functions.php


#php
cp ./php/config/php.ini      /usr/local/php/etc/php.ini

#nginx
cp ./nginx/config/nginx.conf /usr/local/nginx/conf/nginx.conf

echo "End sdeploy"
