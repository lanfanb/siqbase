FROM openeuler/openeuler:22.03-lts
RUN dnf upgrade -y ; \
dnf groupinstall -y "Development Tools" ; \
dnf clean all
CMD ["/usr/sbin/init"]
