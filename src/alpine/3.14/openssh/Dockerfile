FROM alpine:3.14


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


RUN apk add --update --no-cache \
    socat \
    bash \
    openssh


COPY authorized_keys /root/.ssh/authorized_keys


RUN mkdir -p /root/.ssh \
    && chmod 700 /root/.ssh \
    && touch /root/.ssh/authorized_keys \
    && chmod 600 /root/.ssh/authorized_keys


COPY bootstrap.sh openssh_entry.sh /
RUN chmod +x /bootstrap.sh
RUN /bootstrap.sh


EXPOSE 22


ENTRYPOINT ["/openssh_entry.sh"]
