FROM ubuntu:latest
LABEL version="0.0.4-beta" description="Linux Update Services" maintainer="Geraldo Lucas Poli<linuxupdateservices@techpoli.info>"
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/geraldolucaspoli/LinuxUpdateServices/ /opt/linuxupdateservices
RUN apt-get install python -y
RUN apt-get install python-pip -y
RUN apt-get install virtualenv -y
RUN apt-get install ssmtp -y
RUN apt-get install mailutils -y
RUN apt-get install sendemail -y
RUN /opt/linuxupdateservices/sendmail.sh 
