FROM debian:wheezy
MAINTAINER tarent solutions GmbH <info@tarent.de>

RUN DEBIAN_FRONTEND="noninteractive" apt-get update -qq
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -yqq --no-install-recommends \
        debhelper build-essential openjdk-7-jre-headless

ADD build.sh /usr/local/bin/build-package

VOLUME ["/build-output"]
VOLUME ["/source"]

ENTRYPOINT ["/usr/local/bin/build-package"]
CMD ["-us", "-uc"]

WORKDIR /source
