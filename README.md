# gjchen/alpine@Dockerhub
A flavored Alpine Linux 
* apk --no-cache --no-progress add openssl bash su-exec s6 tzdata

ENTRYPOINT /entrypoint.sh:
* if CMD is not given, invoke s6 to init services placed at /etc/s6

Services:
* crond
* syslogd

Environment Varables:
* use -e TIMEZONE="UTC" to switch timezone
* use -e SYSLOG_OPTION"-R 172.17.0.1" to forward the log to another syslog server

