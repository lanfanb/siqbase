FROM ubuntu:22.04
RUN \
apt update ; \
apt install -y wget ; \
wget -O /etc/apt/sources.list http://mirrors.tencentyun.com/repo/ubuntu22_sources.list ; \
apt update ; \
apt upgrade -y ; \
apt install -y podman ; \
apt clean
CMD ["/usr/sbin/init"]
