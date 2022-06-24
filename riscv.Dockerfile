FROM alpine:latest
RUN \
rel=`cut -d'.' -f1,2 /etc/alpine-release` ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/main/" > /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/community/" >> /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories ; \
apk update ; \
apk add --no-cache build-base python3-dev openjdk11 git sbt dtc zlib-dev \
bash autoconf automake libtool m4 curl grep gawk gperf bison flex-dev \
expat-dev texinfo patchutils bc ncurses-dev mpc1-dev mpfr-dev gmp-dev \
isl-dev readline-dev babeltrace-dev boost ninja pixman-dev cmake eudev-dev ; \
ln -sf python3 /usr/bin/python ; \
export RISCV=/opt/riscv/2022.06.10 ; \
cd && git clone --depth 1 --branch 2022.06.10 https://github.com/lanfanb/riscv-gnu-toolchain.git ; \
cd && cd riscv-gnu-toolchain && git submodule update --init --recursive --depth 1 ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=$RISCV --enable-multilib && make -j2 && cd .. && rm -rf build ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=$RISCV && make musl -j2 && cd .. && rm -rf build ; \
cd && cd riscv-gnu-toolchain && mkdir build && cd build ; \
../configure --prefix=$RISCV/glibc --enable-multilib && make linux -j2 && cd .. && rm -rf build ; \
cd && cd riscv-gnu-toolchain/spike && mkdir build && cd build ; \
../configure --prefix=$RISCV && make -j2 && make install ; \
cd && cd riscv-gnu-toolchain/qemu && mkdir build && cd build ; \
../configure --prefix=$RISCV --target-list=riscv64-softmmu --disable-werror && make -j2 && make install ; \
cd && rm -rf riscv-gnu-toolchain ; \
cd && git clone --depth 1 --branch v4.224 https://github.com/verilator/verilator ; \
cd verilator && autoconf && ./configure --prefix=/opt/verilator/4.224 ; \
make -j2 && make install ; \
cd && rm -rf verilator ; \
cd
CMD ["/bin/sh"]
