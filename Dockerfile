FROM wordpress

RUN apt-get update; \
     apt-get install ffmpeg -y; \
     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
     chmod +x wp-cli.phar; \
    sudo mv wp-cli.phar /usr/local/bin/wp;