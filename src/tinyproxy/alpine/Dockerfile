FROM alpine:3


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


RUN apk add --update --no-cache tinyproxy


COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf


EXPOSE 8888


ENTRYPOINT ["/usr/bin/tinyproxy"]
CMD ["-d"]
