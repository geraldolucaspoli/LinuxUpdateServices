FROM ubuntu:latest
LABEL version="0.0.4-beta" description="Linux Update Services" maintainer="Geraldo Lucas Poli<linuxupdateservices@techpoli.info>"
RUN apt-get update
RUN apt-get install python -y
RUN apt-get install git -y
RUN git clone https://github.com/geraldolucaspoli/LinuxUpdateServices/ /opt/linuxupdateservices

