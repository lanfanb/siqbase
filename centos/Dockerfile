FROM docker.io/library/centos:centos7
RUN yum install -y wget ; \
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.tencentyun.com/repo/centos7_base.repo ; \
wget -O /etc/yum.repos.d/epel.repo        http://mirrors.tencentyun.com/repo/epel-7.repo       ; \
wget -O /etc/yum.repos.d/sbt-rpm.repo     https://www.scala-sbt.org/sbt-rpm.repo               ; \
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
yum groupinstall -y Base "Development Tools" "Scientific Support" ; \
yum erase -y swig ; \
yum install -y swig3 cmake cmake3 python3 python3-Cython python3-devel tcl-devel tk-devel qt5*-devel \
ruby ruby-devel eigen3 eigen3-devel devtoolset-11 boost boost-devel boost-static boost-openmpi \
boost-openmpi-devel boost-openmpi-python boost-python36 boost-python36-devel boost-python36-static \
boost-mpich boost-mpich-devel boost-mpich-python boost169 boost169-devel boost169-static mercurial \
boost169-openmpi boost169-openmpi-devel boost169-openmpi-python2-devel boost169-openmpi-python3-devel \
boost169-python2-devel boost169-python3-devel boost169-mpich-devel boost169-mpich-python2-devel \
boost169-mpich-python3-devel python36-PyYAML mesa-libGLU-devel cairo-devel ninja-build libXt-devel \
gsl-devel readline-devel libffi-devel openssl-devel libcurl-devel gperf zlib-static bzip2-devel \
Judy-devel gtk3-devel maven dtc python2-scons python36-scons hdf5-devel protobuf-devel gperftools-devel \
sbt java-11-openjdk ccache sqlite-devel gdbm-devel libdb libdb-* help2man texinfo lpsolve-devel ; \
alternatives --set java $(alternatives --list | grep java-11 | awk '{ print $3 }')/bin/java ; \
yum clean all
CMD ["/usr/sbin/init"]
