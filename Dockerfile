FROM wordpress

RUN apt-get update; \
     apt-get install ffmpeg -y; \
     apt-get install libapache2-mod-xsendfile; \
     a2enmod xsendfile; \
     echo "XSendFile on" >> /etc/apache2/apache2.conf; \
     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     chmod +x wp-cli.phar; \
     mv wp-cli.phar /usr/local/bin/wp;