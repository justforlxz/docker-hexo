FROM mhart/alpine-node:6

MAINTAINER kirigayakazushin,<kirigaya@mkacg.com>
RUN adduser -D -G users docker
RUN \
    apk --update --no-progress add git openssh
RUN mkdir /Hexo \
    && chown -R docker /Hexo
VOLUME /Hexo
WORKDIR /Hexo
RUN \
    npm install hexo-cli -g \
    && npm install -g cnpm
USER docker
CMD ['/bin/bash']
