#!/bin/sh

if [ -n "$1" ]; then
  exec $@
  exit $?
fi

/bin/s6-svscan /etc/s6.d
