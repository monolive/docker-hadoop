FROM monolive/centos:6.5
MAINTAINER Olivier Renault "monoliv@gmail.com"

USER root

RUN yum install -y openssh-server
RUN sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
RUN service sshd start

# Set password to Hadoop
RUN echo 'root:hadoop' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd" "-D"]
