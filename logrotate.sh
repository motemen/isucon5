#!/bin/bash


now=$(date +'%H:%m:%S')
sudo mv /var/log/nginx/access_log.tsv /var/log/nginx/access_log.tsv.$now
sudo /etc/init.d/nginx reload
