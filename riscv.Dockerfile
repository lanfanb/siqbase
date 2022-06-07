FROM alpine:3.16.0
RUN \
rel=`cut -d'.' -f1,2 /etc/alpine-release` ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/main/" > /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/community/" >> /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories ; \
apk update ; \
apk add --no-cache build-base python3-dev openjdk11 git sbt dtc zlib-dev \
bash autoconf automake libtool m4 curl grep gawk gperf bison flex-dev \
expat-dev texinfo patchutils bc ncurses-dev mpc1-dev mpfr-dev gmp-dev \
isl-dev readline-dev babeltrace-dev ; \
ln -sf python3 /usr/bin/python ; \
cd && git clone --depth 1 --branch 2022.06.03 https://github.com/riscv-collab/riscv-gnu-toolchain.git ; \
cd && cd riscv-gnu-toolchain && git submodule update --init --recursive --depth 1 ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=/opt/riscv/2022.06.03 --enable-multilib && make -j2 && cd .. && rm -rf build ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=/opt/riscv/2022.06.03 && make musl -j2 && cd .. && rm -rf build ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=/opt/riscv/2022.06.03/glibc --enable-multilib && make linux -j2 && cd .. && rm -rf build ; \
cd && rm -rf riscv-gnu-toolchain ; \
cd
CMD ["/bin/sh"]
