FROM monolive/centos:6.5
MAINTAINER Olivier Renault 

USER root

RUN yum install -y openssh-server
RUN service sshd start

EXPOSE 22


