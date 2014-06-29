FROM centos
MAINTAINER Olivier Renault 

USER root

RUN yum install -y openssh-server
RUN chkconfig sshd on 

EXPOSE 22


