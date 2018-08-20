FROM alpine:3.8

LABEL maintainer="team@codacy.com"

RUN apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	git \
	gzip \
	jq \
	openssh \
	tar \
	wget \
    make && \
    rm -rf /var/cache/apk/*

WORKDIR /root/workdir
