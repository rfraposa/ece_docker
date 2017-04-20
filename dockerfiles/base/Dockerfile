# Dockerfile for base container for Elastic Cloud Enterprise

FROM ubuntu:14.04

RUN sudo apt-get update \
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual xfsprogs \
sudo apt-get upgrade -y \
echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf 

RUN sudo groupadd docker \
sudo usermod -aG docker ubuntu 

EXPOSE 22 80 443 7000 12375 12300 12343 12400 12443 8764 9200 9300 22191 12191 2112 18000 
 