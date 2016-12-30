FROM alpine:3.4
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add openssl rsyslog bash
RUN	mkdir -p /etc/rsyslog.d/ && \
	printf "*.*\t|/dev/stdout\n*.*\t~\n" > /etc/rsyslog.d/00-dockerized.conf
CMD	rsyslogd; crond -f;
