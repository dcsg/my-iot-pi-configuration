#!/bin/bash
set -e

rm -f /etc/telegraf/telegraf.conf
gomplate -f /etc/telegraf/telegraf.conf.template -o /etc/telegraf/telegraf.conf

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi

exec "$@"
