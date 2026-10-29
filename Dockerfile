FROM ruby:3.2-slim-bookworm
ENTRYPOINT []
CMD ["/bin/bash"]

WORKDIR /srv/

RUN apt-get update > /dev/null && \
  apt-get -y install --no-install-recommends \
    ca-certificates git wget pkg-config build-essential cmake autoconf libtool zlib1g-dev lsb-release \
    > /dev/null && \
  rm -rf /var/lib/apt/lists/*

ADD . /srv/or-tools

RUN wget -qO- https://github.com/google/or-tools/releases/download/v7.8/or-tools_debian-10_v7.8.7959.tar.gz | \
    tar xz --strip-components=1 -C /srv/or-tools

ADD . /srv/optimizer-ortools

WORKDIR /srv/optimizer-ortools
RUN make tsp_simple
