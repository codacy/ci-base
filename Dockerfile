FROM alpine:3.7

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
	wget

WORKDIR /root/workdir
