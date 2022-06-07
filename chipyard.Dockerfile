FROM lanfanb/siqbase:riscv.latest
RUN \
cd && git clone --depth 1 --branch v4.220 https://github.com/verilator/verilator ; \
cd verilator && autoconf && ./configure --prefix=/opt/verilator/4.220 ; \
make -j2 && make install ; \
cd && rm -rf verilator ; \
export PATH=/opt/verilator/4.220/bin:$PATH ; \
export RISCV=/opt/riscv/2022.06.03 ; \
cd && git clone --depth 1 --branch 1.6.2-ibex https://github.com/lanfanb/chipyard.git ; \
cd ~/chipyard && git submodule update --init --depth 1 ; \
cd ~/chipyard/generators/rocket-chip && git submodule update --init --depth 1 ; \
cd ~/chipyard/generators/ibex && git submodule update --init --depth 1 ; \
cd ~/chipyard/sims/verilator && make CONFIG=IbexConfig ; \
cd
CMD ["/bin/sh"]
