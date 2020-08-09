from centos:8

ENV container docker
RUN dnf -y update && dnf clean all
RUN yum install -y python3
RUN pip3 install pytest
copy . /
RUN python3 main.py
