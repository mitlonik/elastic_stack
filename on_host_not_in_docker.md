# Installing and Configuring Elastic Stack - on host, not in docker!

## Step 1 — Installing and Configuring Elasticsearch

step by step :
``` bash
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
 
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
 
sudo apt update
 
sudo apt install elasticsearch
 
sudo nano /etc/elasticsearch/elasticsearch.yml
```
elasticsearch.yml
``` yml
. . .
network.host: localhost
. . .
```
step by step :
``` bash
sudo systemctl start elasticsearch
 
curl -X GET "localhost:9200"
```

## Step 2 — Installing and Configuring the Kibana Dashboard
step by step :
``` bash
sudo apt install kibana
 
sudo systemctl start kibana
```

## Step 3 — Installing and Configuring Logstash
step by step :
``` bash
sudo apt install logstash
 
sudo nano /etc/logstash/conf.d/02-beats-input.conf
```
02-beats-input.conf
``` conf
input {
  beats {
    port => 5044
  }
}
```
step by step :
``` bash
sudo nano /etc/logstash/conf.d/10-syslog-filter.conf
```
10-syslog-filter.conf
``` conf
filter {
  if [fileset][module] == "system" {
    if [fileset][name] == "auth" {
      grok {
        match => { "message" => ["%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} sshd(?:\[%{POSINT:[system][auth][pid]}\])?: %{DATA:[system][auth][ssh][event]} %{DATA:[system][auth][ssh][method]} for (invalid user )?%{DATA:[system][auth][user]} from %{IPORHOST:[system][auth][ssh][ip]} port %{NUMBER:[system][auth][ssh][port]} ssh2(: %{GREEDYDATA:[system][auth][ssh][signature]})?",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} sshd(?:\[%{POSINT:[system][auth][pid]}\])?: %{DATA:[system][auth][ssh][event]} user %{DATA:[system][auth][user]} from %{IPORHOST:[system][auth][ssh][ip]}",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} sshd(?:\[%{POSINT:[system][auth][pid]}\])?: Did not receive identification string from %{IPORHOST:[system][auth][ssh][dropped_ip]}",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} sudo(?:\[%{POSINT:[system][auth][pid]}\])?: \s*%{DATA:[system][auth][user]} :( %{DATA:[system][auth][sudo][error]} ;)? TTY=%{DATA:[system][auth][sudo][tty]} ; PWD=%{DATA:[system][auth][sudo][pwd]} ; USER=%{DATA:[system][auth][sudo][user]} ; COMMAND=%{GREEDYDATA:[system][auth][sudo][command]}",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} groupadd(?:\[%{POSINT:[system][auth][pid]}\])?: new group: name=%{DATA:system.auth.groupadd.name}, GID=%{NUMBER:system.auth.groupadd.gid}",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} useradd(?:\[%{POSINT:[system][auth][pid]}\])?: new user: name=%{DATA:[system][auth][user][add][name]}, UID=%{NUMBER:[system][auth][user][add][uid]}, GID=%{NUMBER:[system][auth][user][add][gid]}, home=%{DATA:[system][auth][user][add][home]}, shell=%{DATA:[system][auth][user][add][shell]}$",
                  "%{SYSLOGTIMESTAMP:[system][auth][timestamp]} %{SYSLOGHOST:[system][auth][hostname]} %{DATA:[system][auth][program]}(?:\[%{POSINT:[system][auth][pid]}\])?: %{GREEDYMULTILINE:[system][auth][message]}"] }
        pattern_definitions => {
          "GREEDYMULTILINE"=> "(.|\n)*"
        }
        remove_field => "message"
      }
      date {
        match => [ "[system][auth][timestamp]", "MMM  d HH:mm:ss", "MMM dd HH:mm:ss" ]
      }
      geoip {
        source => "[system][auth][ssh][ip]"
        target => "[system][auth][ssh][geoip]"
      }
    }
    else if [fileset][name] == "syslog" {
      grok {
        match => { "message" => ["%{SYSLOGTIMESTAMP:[system][syslog][timestamp]} %{SYSLOGHOST:[system][syslog][hostname]} %{DATA:[system][syslog][program]}(?:\[%{POSINT:[system][syslog][pid]}\])?: %{GREEDYMULTILINE:[system][syslog][message]}"] }
        pattern_definitions => { "GREEDYMULTILINE" => "(.|\n)*" }
        remove_field => "message"
      }
      date {
        match => [ "[system][syslog][timestamp]", "MMM  d HH:mm:ss", "MMM dd HH:mm:ss" ]
      }
    }
  }
}
```
step by step :
``` bash
sudo nano /etc/logstash/conf.d/30-elasticsearch-output.conf
```
30-elasticsearch-output.conf
``` conf
output {
  elasticsearch {
    hosts => ["localhost:9200"]
    manage_template => false
    index => "%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}"
  }
}
```
##### Test your Logstash configuration with this command:
step by step :
``` bash
sudo -u logstash /usr/share/logstash/bin/logstash --path.settings /etc/logstash -t
```
##### If your configuration test is successful, start Logstash
step by step :
``` bash
sudo systemctl start logstash
```
## Step 4 — Installing and Configuring Filebeat
step by step :
``` bash
sudo apt install filebeat
 
sudo nano /etc/filebeat/filebeat.yml
```
filebeat.yml
``` yml
filebeat.inputs:
  - type: log
    enabled: true
    paths:
      - "/var/log/*.log"
 
filebeat.autodiscover:
  providers:
    - type: docker
      hints.enabled: true
 
filebeat.config.modules:
  path: ${path.config}/modules.d/*.yml
  reload.enabled: false
 
setup.template.settings:
  index.number_of_shards: 1
 
setup.kibana:
  host: "localhost:5601"
 
output.elasticsearch:
  enabled: true
  hosts: ["localhost:9200"]
 
output.logstash:
  enabled: false
  hosts: ["localhost:5044"]
 
processors:
  - drop_fields:
      fields: ["agent.ephemeral_id", "agent.hostname", "agent.id", "agent.name", "agent.version", "docker.container.labels.com_docker_compose_config-hash", "docker.container.labels.com_docker_compose_container-number", "docker.container.labels.com_docker_compose_version", "ecs.version", "host.name", "input.type", "kubernetes.container.image", "log.offset" ]
      ignore_missing: false
 
monitoring.enabled: false
logging.metrics.enabled: false
logging.level: debug
logging.selectors: ["*"]
logging.to_files: true
```
##### for test purposes only, check how the host activity logs are logged. Аfter we make sure in kibana that the logs are being written, disable the module. 
step by step :
``` bash
sudo filebeat modules enable system elasticsearch logstash
 
sudo filebeat modules list
```
##### Load the template
step by step 
``` bash
sudo filebeat setup --template -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["localhost:9200"]'
```
useful links: [How To Install Elasticsearch, Logstash, and Kibana (Elastic Stack) on Ubuntu 18.04 {Digital Ocean}](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elastic-stack-on-ubuntu-18-04)
