FROM ubuntu:18.04
RUN \
apt update ; \
apt install -y wget ; \
wget -O /etc/apt/sources.list http://mirrors.tencentyun.com/repo/ubuntu18_sources.list ; \
export DEBIAN_FRONTEND=noninteractive ; \
apt update ; \
apt upgrade -y ; \
apt install -y build-essential git ccache python3 python3-dev tcl tcl-dev tk tk-dev \
cmake zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev \
libffi-dev curl libbz2-dev sqlite3 libsqlite3-dev liblzma-dev libgdbm-compat-dev \
libdb-dev qt5-qmake qt*5-dev libqt5*-dev csh automake autoconf m4 libxt-dev gsl-bin \
libgsl-dev bison flex libgtk-3-dev gperf maven device-tree-compiler help2man texinfo \
liblpsolve55-dev libboost-all-dev openjdk-11-jdk ruby ruby-dev swig ninja-build \
rsync qt5-default uuid-dev qtwayland5 ; \
ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime ; \
dpkg-reconfigure -f noninteractive tzdata ; \
update-alternatives --set java $(update-alternatives --list java | grep java-11) ; \
apt clean
CMD ["/usr/sbin/init"]
