FROM consol/centos-xfce-vnc
FROM centos/python-35-centos7
MAINTAINER jimako1989
USER root
RUN yum -y install tcpdump git \
 && mkdir /tmp \
 && cd /tmp \
 && git clone https://github.com/phaethon/scapy \
 && cd scapy \
 && python3 setup.py install
