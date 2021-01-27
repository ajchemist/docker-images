FROM ghcr.io/graalvm/graalvm-ce:ol8-java11-21.0.0


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


# http://clojure.org/community/downloads
ARG linux_install_script_url


RUN curl -o linux-install.sh $linux_install_script_url \
    && chmod +x linux-install.sh \
    && ./linux-install.sh \
    && rm linux-install.sh


ENTRYPOINT ["clojure"]
