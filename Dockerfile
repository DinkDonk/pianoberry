FROM alpine:3.21

RUN apk add --no-cache \
		util-linux \
		e2fsprogs \
		coreutils \
		advancecomp \
		multipath-tools \
		parted \
		e2fsprogs-extra \
		rsync

VOLUME /build

COPY . /pianoberry/

ENTRYPOINT ["/pianoberry/pianoberry/build"]
