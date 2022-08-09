FROM ubuntu:20.04


LABEL maintainer "ajchemist <1694505+ajchemist@users.noreply.github.com>"


RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update \
    && apt-get -y install curl xz-utils build-essential zlib1g-dev libncurses-dev autoconf make texinfo gnutls-bin libgccjit-10-dev libgccjit0 \
    && curl -LO https://ftp.gnu.org/gnu/emacs/emacs-28.1.tar.xz \
    && tar xf emacs-28.1.tar.xz \
    && cd emacs-28.1 \
    && CC="gcc-10" ./autogen.sh \
    && CFLAGS='-I/usr/lib/gcc/x86_64-linux-gnu/10/include -L/usr/lib/gcc/x86_64-linux-gnu/10' ./configure --prefix=/usr/local --with-native-compilation --with-x=no --with-gnutls=ifavailable --without-pop \
    && make \
    && make install


WORKDIR /root
ENTRYPOINT ["emacs"]
