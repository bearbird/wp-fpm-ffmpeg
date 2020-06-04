FROM wordpress

RUN apt-get update; \
     #Install WP-CLI
     # curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     # chmod +x wp-cli.phar; \
     # mv wp-cli.phar /usr/local/bin/wp;
     #Install FFMPEG
     apt-get install ffmpeg -y; \
     #Install XSendFile apache module
     apt-get install libapache2-mod-xsendfile; \
     a2enmod xsendfile; \
     #Enable and configure XSendFile apache module
     echo "XSendFile on" >> /etc/apache2/apache2.conf; \
     echo "XSendFilePath /var/www/html/wp-content/uploads" >> /etc/apache2/apache2.conf;
     

#Do permissions
RUN usermod -u 1000 www-data