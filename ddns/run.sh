#!/usr/bin/with-contenv bashio

echo 'hello'

export DDNS_DNS="$(bashio::config 'dns')"
export DDNS_ID="$(bashio::config 'id')"
export DDNS_TOKEN="$(bashio::config 'token')"
export DDNS_IPV4="$(bashio::config 'ipv4')"
export DDNS_IPV6="$(bashio::config 'ipv6')"
export DDNS_INDEX4="$(bashio::config 'index4')"
export DDNS_INDEX6="$(bashio::config 'index6')"
export DDNS_TTL="$(bashio::config 'ttl')"
export DDNS_PROXY="$(bashio::config 'proxy')"
export DDNS_DEBUG="$(bashio::config 'debug')"
export DDNS_CACHE="$(bashio::config 'cache')"


echo "{ \
    dns:'${DDNS_DNS}',\
    id:'${DDNS_ID}',\
    token:'${DDNS_TOKEN}',\
    index4:'${DDNS_IPV4}',\
    ipv6:'${DDNS_IPV6}',\
    index4:'${DDNS_INDEX4}',\
    index6:'${DDNS_INDEX6}',\
    ttl:'${DDNS_TTL}',\
    proxy:'${DDNS_PROXY}',\
    debug:${DDNS_DEBUG},\
    cache:${DDNS_CACHE},\
}" > /config.json

echo "updating dns:${DDNS_DNS}"

#
#if [ $# -eq 0 ]; then
#  printenv > /etc/environment
#  echo "*/5 * * * *   /ddns -c /config.json" > /etc/crontabs/root
#  exec crond -f
#else
#  first=`echo $1 | cut -c1`
#  if [ "$first" = "-" ]; then
#    exec /ddns $@
#  else
#    exec $@
#  fi
#fi