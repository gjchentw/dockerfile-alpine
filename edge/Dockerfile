FROM alpine:edge
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add openssl rsyslog bash sudo && \
	EDITOR="sed -i -e s/=(ALL)/=(ALL:ALL)/" visudo
RUN	mkdir -p /etc/rsyslog.d/ && \
	printf "*.*\t|/dev/stdout\n*.*\t~\n" > /etc/rsyslog.d/00-dockerized.conf
CMD	rsyslogd; crond -f;
