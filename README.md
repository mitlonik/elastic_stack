# elastic_stack

Filebeat finds all running docker containers on the host and sends the stdout stream from the containers to logstash or elasticsearch (depending on needs).

How run:
``` bash
docker-compose -f docker-compose.yml -f filebeat.docker-compose.yml up --build
```


## For Mac OS X Users

You may get an error for logstash:
``` bash
Error invoking remote method 'docker-start-container': Error: (HTTP code 500) server error - Ports are not available: listen tcp 0.0.0.0:5000: bind: address already in use
```
resolve this problem - change 5000 port to 5001 or see this - [Port 5000 is now used for Airplay as well as port 7000 in macOS Monterey](https://apple.stackexchange.com/questions/431154/controlcenter-app-listens-to-port-5000-tcp-on-monterey-os-is-that-normal-why-d)

You can toggle that off by unchecking 'Airplay Receiver' in System Preferences > Sharing at the bottom of the list.

So yes, it's normal ! Apple realized that those ports were not used from an OS point of view, even if a lot of developers use those ports by default.


# useful links for logstash

1. TOP ! [Практическое применение ELK. Настраиваем logstash и pipelines](https://habr.com/ru/post/451264/)

2. TOP ! [Собираем, парсим и отдаём логи с помощью Logstash](https://habr.com/ru/post/165059/)

3. [Советы и рекомендации по преобразованию неструктурированных данных из логов в ELK Stack используя GROK в LogStash](https://habr.com/ru/post/509632/)

4. [A Practical Guide to Logstash: Parsing Common Log Patterns with Grok](https://coralogix.com/blog/a-practical-guide-to-logstash-parsing-common-log-patterns-with-grok/)

5. [Подробное объяснение Logstash Grok](https://russianblogs.com/article/59001038982/)

6. [Logstash parse json logs](https://stackoverflow.com/questions/49933195/logstash-grok-parse-a-line-with-json-filter)

[elastalert 2](https://elastalert2.readthedocs.io/en/latest/elastalert.html#overview)
