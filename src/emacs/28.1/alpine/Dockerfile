FROM alpine:3


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


RUN apk add --update --no-cache \
    xz \
    git \
    bash
RUN apk add --no-cache emacs-x11-nativecomp --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community


WORKDIR /root
ENTRYPOINT ["emacs"]
