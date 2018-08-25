#!/bin/bash

#jupyterhub
cd /srv/data/deployment/github/easyailab
cp ./jupyterhub/config/*.* /srv/jupyterhub
cp ./jupyterhub/jupyter.png       /usr/local/share/jupyter/hub/static/images/jupyter.png
cp ./jupyterhub/jupyterhub-80.png /usr/local/share/jupyter/hub/static/images/jupyterhub-80.png

#wordpress
cp ./wordpress/config/wp-config.php         /home/wwwroot/default/wp-config.php
cp ./wordpress/config/default-constants.php /home/wwwroot/default/wp-includes/default-constants.php
cp ./wordpress/learnPress/zh_CN.mo          /home/wwwroot/default/wp-content/plugins/learnpress/languages/learnpress-zh_CN.mo
cp ./wordpress/learnPress/zh_CN.po          /home/wwwroot/default/wp-content/plugins/learnpress/languages/learnpress-zh_CN.po
cp ./wordpress/logo_black_font_H240.png     /home/wwwroot/default/wp-includes/images/logo_black_font_H240.png
cp ./wordpress/logo_black_font_H240.png     /home/wwwroot/default/wp-admin/images/logo_black_font_H240.png

#avada
cp -rf ./wordpress/avada/google/s           /home/wwwroot/default/
cp ./wordpress/avada/source/class-avada-google-fonts.php /home/wwwroot/default/wp-content/themes/Avada/includes/class-avada-google-fonts.php
cp ./wordpress/avada/source/functions.php   /home/wwwroot/default/wp-content/themes/Avada/functions.php
cp ./wordpress/avada/source/fusion-recent-posts.php  /home/wwwroot/default/wp-content/plugins/fusion-builder/shortcodes/fusion-recent-posts.php

#php
cp ./php/config/php.ini      /usr/local/php/etc/php.ini

#nginx
cp ./nginx/config/nginx.conf /usr/local/nginx/conf/nginx.conf

echo "End sdeploy"
