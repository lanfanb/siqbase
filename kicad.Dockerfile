FROM alpine:3.16.0
RUN \
rel=`cut -d'.' -f1,2 /etc/alpine-release` ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/main/" > /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/v$rel/community/" >> /etc/apk/repositories ; \
echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories ; \
apk update ; \
apk add --no-cache kicad ngspice
CMD ["/usr/bin/kicad"]
