#!/bin/bash

 #----------------Sytem Update----------------
    echo "Updating System"
    sudo apt update -y

#----------------Install Nginx----------------
    echo "Installing Nginx"
    sudo apt install nginx -y

#----------------Start Nginx Service----------------
    echo "Starting Nginx Service"
    sudo systemctl start nginx

#----------------Enable Nginx Service----------------
    echo "Enabling Nginx Service"
    sudo systemctl enable nginx

#----------------Check Nginx Status----------------
    echo "Checking Nginx Status"
    sudo systemctl status nginx

#----------------Nginx Version----------------
    echo "Nginx Version"
    nginx -v

 #---------------end of script----------------
    echo "Nginx Installation Completed"

    echo "<h1>Welcome to Nginx Server</h1>" > /var/www/html/index.html