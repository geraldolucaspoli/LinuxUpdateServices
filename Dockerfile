FROM ubuntu:latest
MAINTAINER Geraldo Lucas Poli <linuxupdateservices@techpoli.info>
LABEL  "inux Update Services"
LABEL linuxupdateservices.techpoli.info  "0.0.3-beta"
RUN apt-get update
RUN apt-get install python -y
RUN apt-get install git -y
RUN git clone https://github.com/geraldolucaspoli/LinuxUpdateServices/ /opt/linuxupdateservices

