# elastic_stack

Filebeat finds all running docker containers on the host and sends the stdout stream from the containers to logstash or elasticsearch (depending on needs).



## For Mac OS X Users

You may get an error for logstash:
``` bash
Error invoking remote method 'docker-start-container': Error: (HTTP code 500) server error - Ports are not available: listen tcp 0.0.0.0:5000: bind: address already in use
```
resolve this problem - change 5000 port to 5001 or see this - [Port 5000 is now used for Airplay as well as port 7000 in macOS Monterey](https://apple.stackexchange.com/questions/431154/controlcenter-app-listens-to-port-5000-tcp-on-monterey-os-is-that-normal-why-d)

You can toggle that off by unchecking 'Airplay Receiver' in System Preferences > Sharing at the bottom of the list.

So yes, it's normal ! Apple realized that those ports were not used from an OS point of view, even if a lot of developers use those ports by default.
