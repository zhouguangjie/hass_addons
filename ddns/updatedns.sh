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

aliyun-ddns-cli \
    --ipapi ${IPAPI} \
    ${IPV6:+-6} \
    auto-update \
    --domain ${DOMAIN} \
    --redo ${REDO} \
    --ttl ${TTL}