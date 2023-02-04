cd "$(dirname "$0")"
proxychains haproxy -f proxy_config.cfg
