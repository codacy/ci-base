FROM alpine:3.15.0

LABEL maintainer="team@codacy.com"

RUN apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	git \
	zip \
	gzip \
	jq \
	openssh \
	tar \
	wget \
    make && \
    rm -rf /var/cache/apk/*

WORKDIR /root/workdir
