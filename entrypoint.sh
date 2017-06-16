#!/bin/sh

if [ -f "/usr/share/zoneinfo/${TIMEZONE}" ]; then
  cat /usr/share/zoneinfo/${TIMEZONE} > /etc/localtime
  echo ${TIMEZONE} > /etc/timezone
  date
fi

if [ -n "$1" ]; then
  exec $@
  exit $?
fi

/bin/s6-svscan /etc/s6.d
