#!/bin/bash
#this script will install Apache httpd webserver
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd 
ps -ef | grep httpd
systemctl status httpd 
