FROM azul/zulu-openjdk-alpine:19-jre-headless


LABEL maintainer "ajchemist <1694505+aJchemist@users.noreply.github.com>"


# http://clojure.org/community/downloads
ARG linux_install_script_url


RUN apk add --update --no-cache \
    bash \
    curl


RUN curl -o linux-install.sh $linux_install_script_url \
    && chmod +x linux-install.sh \
    && ./linux-install.sh \
    && rm linux-install.sh


RUN apk del curl


ENTRYPOINT ["clojure"]
