FROM registry.access.redhat.com/ubi8/ubi-init:latest

LABEL maintainer="luigizuccarelli@gmail.com"

RUN dnf -y install yum-utils
RUN yum -y install python3
RUN python3 -V
RUN yum -y install python3-pip
RUN pip3 install virtualenv


WORKDIR ./qiskit


