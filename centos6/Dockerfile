FROM docker.io/library/centos:centos6
RUN sed -i "/^mirrorlist/d" /etc/yum.repos.d/CentOS-Base.repo ; \
sed -i "s/^#baseurl/baseurl/" /etc/yum.repos.d/CentOS-Base.repo ; \
sed -i "s/mirror.centos.org/mirrors.tencentyun.com/" /etc/yum.repos.d/CentOS-Base.repo ; \
yum install -y wget ; \
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.tencentyun.com/repo/centos6_base.repo ; \
wget -O /etc/yum.repos.d/epel.repo        http://mirrors.tencentyun.com/repo/epel-6.repo       ; \
yum clean all ; \
yum install -y centos-release-scl centos-release-scl-rh ; \
sed -i "/^mirrorlist/d" /etc/yum.repos.d/CentOS-SCLo-scl.repo ; \
sed -i "s/^# baseurl/baseurl/" /etc/yum.repos.d/CentOS-SCLo-scl.repo ; \
sed -i "s/mirror.centos.org/mirrors.tencentyun.com/" /etc/yum.repos.d/CentOS-SCLo-scl.repo ; \
sed -i "/^mirrorlist/d" /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo ; \
sed -i "s/^#baseurl/baseurl/" /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo ; \
sed -i "s/mirror.centos.org/mirrors.tencentyun.com/" /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo ; \
yum makecache ; \
yum upgrade -y ; \
yum groupinstall -y Base "Development tools" "Scientific support" ; \
yum install -y cmake cmake3 tcl-devel tk-devel qt5*-devel ruby ruby-devel eigen3-devel \
devtoolset-9 boost boost-devel boost-static boost-openmpi boost-openmpi-devel boost-openmpi-python \
boost-python boost-mpich boost-mpich-devel boost-mpich-python boost148 boost148-devel xz-devel  \
boost148-static boost148-openmpi boost148-openmpi-devel boost148-openmpi-python libpcap-devel \
boost148-mpich-devel boost148-mpich-python mercurial mesa-libGLU-devel cairo-devel ninja-build \
libXt-devel gsl-devel readline-devel libffi-devel openssl-devel libcurl-devel gperf zlib-static \
bzip2-devel Judy-devel dtc hdf5-devel protobuf-devel gperftools-devel ccache help2man texinfo \
lpsolve-devel gdbm-devel db4-* libuuid-devel zlib-devel ncurses-devel sqlite-devel sqlite2-devel \
python34 python34-devel python34-numpy ; \
yum clean all
CMD ["/usr/sbin/init"]
