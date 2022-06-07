FROM debian:bullseye
RUN \
echo 'deb http://mirrors.tencentyun.com/debian bullseye main contrib non-free' > /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian bullseye-backports main contrib non-free' >> /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian-security bullseye-security main contrib non-free' >> /etc/apt/sources.list ; \
apt update ; \
apt upgrade -y ; \
apt install -y podman vim wget curl ; \
apt clean
CMD ["/usr/sbin/init"]
