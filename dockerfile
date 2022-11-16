FROM ubuntu
MAINTAINER qrevalenzuela <qrevalenzuela@tip.edu.ph>

#skipping of prompts
ARG DEBIAN_FRONTEND=noninteractive

#updates 
RUN apt update; apt dist-upgrade -y

#install db and apache
RUN apt install -y apache2 mariadb-server

#point2point Entry
ENTRYPOINT apache2ctl -D FOREGROUND
