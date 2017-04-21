# Dockerfile for base container for Elastic Cloud Enterprise

FROM ubuntu:14.04

RUN apt-get update  && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    software-properties-common 
    
RUN  apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual  \
 apt-get upgrade -y
RUN echo "vm.max_map_count=262144" |  tee -a /etc/sysctl.conf 

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" 
       
RUN  apt-get update
RUN apt-get install -y docker-ce

RUN useradd -m -p password -s /bin/bash ubuntu
RUN usermod -aG sudo ubuntu


EXPOSE 22 80 443 7000 12375 12300 12343 12400 12443 8764 9200 9300 22191 12191 2112 18000 20000
 