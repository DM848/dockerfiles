#!/bin/sh
set -e

# add consul-node to hosts
HOST_IP="$(/sbin/ip route | awk '/default/ { print $3 }')"
echo "${HOST_IP} consul-node" >> /etc/hosts

exec "$@"