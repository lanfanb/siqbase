FROM docker.io/openeuler/openeuler:22.03-lts
RUN dnf upgrade -y ; \
dnf groupinstall -y "Development Tools" "Scientific Support" "System Tools" ; \
dnf install -y cmake rsync python3-pandas python3-Cython python3-devel tcl-devel tk-devel qt5 qt5-devel \
ruby ruby-devel swig boost boost-devel eigen3 eigen3-devel mesa-libGLU-devel libXt-devel gsl-devel wget \
readline-devel dtc scons maven sbt csh ninja-build libstdc++-static gperf gperftools gperftools-devel \
qemu-system-riscv java-11-openjdk time python3-pip vim python ccache openssl-devel sqlite-devel \
libdb-devel gdbm-devel libnsl2-devel help2man texinfo ; \
strip --remove-section=.note.ABI-tag /usr/lib64/libQt5Core.so.5 ; \
alternatives --set java $(alternatives --list | grep java-11 | awk '{ print $3 }')/bin/java ; \
dnf clean all
CMD ["/usr/sbin/init"]
