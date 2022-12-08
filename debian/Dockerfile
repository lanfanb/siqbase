FROM debian:bullseye
RUN \
echo 'deb http://mirrors.tencentyun.com/debian bullseye main contrib non-free' > /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian bullseye-backports main contrib non-free' >> /etc/apt/sources.list ; \
echo 'deb http://mirrors.tencentyun.com/debian-security bullseye-security main contrib non-free' >> /etc/apt/sources.list ; \
apt update ; \
apt upgrade -y ; \
apt install -y build-essential git ccache python3 python3-dev tcl tcl-dev tk tk-dev \
cmake zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev \
libffi-dev curl libbz2-dev sqlite3 libsqlite3-dev liblzma-dev libgdbm-compat-dev \
libdb-dev qt5-qmake qt*5-dev ; \
apt clean
CMD ["/usr/sbin/init"]
