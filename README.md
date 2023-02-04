# An easy to run solution for running whatsapp-proxy server behind another proxy

Its as easy way to run whatsapp proxy. Unfortunatly whatsapp proxy has no password protection and if you run it any one can use it!

## How to run! (for debian and ubuntu of course)

1) installs proxychains and haproxy:
```
apt install haproxy proxychains
```

2) config your forward proxy in `/etc/proxychains.conf` :
```
socks5 	127.0.0.1 9050`
```

3) replace `{public_ip}` in `proxy_config.cfg` with your external ip that should be accessible by your client.

4) run `run-with-proxychains.sh`



5) add  your external ip as proxy whitout port to your whatsapp client.

Note : Haproxy binds lots of port be sure they are free before run the script : 8199 , 80 , 8080 , 443 , 8443 , 5222 , 8222

## Run wthout Proxychains
If you have direct access to Whatsapp servers (like a VPS) , Just skip steps 3 and 4 and run `run-directly.sh`.


