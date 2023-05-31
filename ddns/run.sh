#!/usr/bin/with-contenv bashio

DDNS_DNS="$(bashio::config 'dns')"
DDNS_ID="$(bashio::config 'id')"
DDNS_TOKEN="$(bashio::config 'token')"
DDNS_IPV4="$(bashio::config 'ipv4')"
DDNS_IPV6="$(bashio::config 'ipv6')"
DDNS_INDEX4="$(bashio::config 'index4')"
DDNS_INDEX6="$(bashio::config 'index6')"
DDNS_TTL="$(bashio::config 'ttl')"
DDNS_PROXY="$(bashio::config 'proxy')"
DDNS_DEBUG="$(bashio::config 'debug')"
DDNS_CACHE="$(bashio::config 'cache')"

exec /ddns
