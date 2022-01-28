FROM fluent/fluentd:v1.14-debian-1
COPY fluentd/conf/ /fluentd/etc
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document"]
USER fluent