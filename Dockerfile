# VERSION  0.0.2

FROM maxexcloo/nginx-php
MAINTAINER smounives "smounives@outlook.com"

RUN apt-get update && apt-get install -y --force-yes git
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /data/http
#RUN git clone https://github.com/q299127/Tieba-Cloud-Sign /data/http/
COPY . /data/http/
RUN git clone https://github.com/kalcaddle/KODExplorer /data/http/explorer/

EXPOSE 80
