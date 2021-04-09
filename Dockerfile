FROM alpine:3.13

RUN apk add --no-cache \
  duplicity \
  bash

COPY files/duply/duply /usr/bin/duply

VOLUME ["/etc/duply"]

RUN duplicity --version
RUN duply --version

CMD ["duply"]
