FROM alpine:3.6
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add openssl bash su-exec s6

# default rule for syslog is send to stdout with option "-O-"
# use -e SYSLOG_OPTION="-R 172.17.0.1" to forward the log to another syslog server and mute the log
ENV	SYSLOG_OPTION="-O-"
ADD	../s6.d /etc/s6.d

CMD	/bin/s6-svscan /etc/s6.d
