FROM wordpress

RUN apt-get update; \
     #Install FFMPEG
     apt-get install ffmpeg -y; \
     #Install XSendFile apache module
     apt-get install libapache2-mod-xsendfile; \
     a2enmod xsendfile; \
     #Enable XSendFile apache module
     echo "XSendFile on" >> /etc/apache2/apache2.conf; \
     #Install WP-CLI
     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     chmod +x wp-cli.phar; \
     mv wp-cli.phar /usr/local/bin/wp;