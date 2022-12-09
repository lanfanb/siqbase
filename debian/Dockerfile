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
libdb-dev qt5-qmake qt*5-dev libqt5*-dev csh automake autoconf m4 libxt-dev gsl-bin \
libgsl-dev bison flex libgtk-3-dev gperf maven device-tree-compiler help2man texinfo \
liblpsolve55-dev libboost-all-dev openjdk-11-jdk ruby ruby-dev ; \
alternatives --set java $(alternatives --list | grep java-11 | awk '{ print $3 }')/bin/java ; \
apt clean
CMD ["/usr/sbin/init"]
