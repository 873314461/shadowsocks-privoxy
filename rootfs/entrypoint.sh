#!/bin/sh

#------------------------------------------------------------------------------
# Configure the service:
#------------------------------------------------------------------------------
env /usr/sbin/privoxy /etc/privoxy/config

env ss-local -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -b 0.0.0.0 -l ${LOCAL_PORT:-7070} -m ${METHOD:-'aes-256-cfb'}
