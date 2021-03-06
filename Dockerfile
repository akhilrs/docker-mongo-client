ARG BASETAG=latest
FROM alpine:$BASETAG
ARG TARGETARCH=amd64
ARG TARGETOS=linux

LABEL maintainer="Akhil R S <hello@ars.vg>"


RUN set -x \
	&& apk update && apk upgrade \
    && apk add --no-cache mongodb-tools
    
CMD ["/bin/sh", "-c", "while sleep 60; do echo '.'; done"]