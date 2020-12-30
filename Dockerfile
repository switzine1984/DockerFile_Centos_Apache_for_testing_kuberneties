FROM centos:latest
USER root

MAINTAINER Switzine_Sebastian
RUN yum install httpd -y

#Copy the index.html
COPY index.html /var/www/html/index.html
#Start the service
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
