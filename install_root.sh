#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/skk_buildout/etc/nginx.conf ./sites-available/skk.conf
cd sites-enabled
ln -s ../sites-available/skk.conf

service nginx stop
certbot certonly --standalone -d skk.voteit.se
service nginx start
