cd "$(dirname "$0")"
haproxy -f proxy_config.cfg
