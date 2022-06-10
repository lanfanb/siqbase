FROM lanfanb/siqbase:riscv.latest
RUN \
export RISCV=/opt/riscv/2022.06.03 ; \
export PATH=/opt/verilator/4.220/bin:$PATH ; \
cd && git clone --depth 1 --branch 1.6.2-ibex https://github.com/lanfanb/chipyard.git ; \
cd ~/chipyard && git submodule update --init --depth 1 ; \
cd ~/chipyard/generators/rocket-chip && git submodule update --init --depth 1 ; \
cd ~/chipyard/generators/ibex && git submodule update --init --depth 1 ; \
cd ~/chipyard/sims/verilator && make CONFIG=IbexConfig ; \
tar -czf ~/ibex.tar.gz generated-src ; \ 
cd
CMD ["/bin/sh"]
