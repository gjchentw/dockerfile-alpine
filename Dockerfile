FROM alpine:edge
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN apk --no-cache --no-progress upgrade -f && \
    apk --no-cache --no-progress add openssl rsyslog bash
ADD rsyslog.conf /etc/rsyslog.conf
CMD rsyslogd; crond -f;
