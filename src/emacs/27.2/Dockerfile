FROM ajchemist/alpine:3.14-openssh


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


RUN apk add --update --no-cache \
    xz \
    git \
    emacs-nox


COPY emacs_daemon_entry.sh /
RUN chmod +x /emacs_daemon_entry.sh


WORKDIR /root
ENTRYPOINT ["emacs"]
