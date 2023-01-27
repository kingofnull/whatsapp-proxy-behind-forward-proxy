# An easy to run solution for running whatsapp-proxy server behind another proxy

Its as easy way to run whatsapp proxy. Unfortunatly whatsapp proxy has no password protection and if you run it any one can use it!

## How to run! (for debian and ubuntu of course)
- installs proxychains and haproxy:
`apt install haproxy proxychains`

- config your forward proxy in `/etc/proxychains.conf`
`socks5 	127.0.0.1 9050`

- run `run.sh`

- replace `{public_ip}` in `proxy_config.cfg` with your external ip that should be accessible by your client.

- add  your external ip as proxy whitout port to your whatsapp client.

Note : haproxy binds lots of port besure they are free before run the script : 8199 , 80 , 8080 , 443 , 8443 , 5222 , 8222
