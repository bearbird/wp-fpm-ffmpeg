FROM wordpress

RUN apt-get update; \
     apt-get install ffmpeg -y;

