ARG ELK_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

# CMD ["/usr/share/logstash/bin/logstash", "--path.settings", "/etc/logstash", "-t"]

# Download JDBC connector for Logstash
RUN curl -L --output "mysql-connector-java-8.0.28.tar.gz" "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.28.tar.gz" \
    && tar -xf "mysql-connector-java-8.0.28.tar.gz" "mysql-connector-java-8.0.28/mysql-connector-java-8.0.28.jar" \
    && mv "mysql-connector-java-8.0.28/mysql-connector-java-8.0.28.jar" "mysql-connector-java-8.0.28.jar" \
    && rm -r "mysql-connector-java-8.0.28" "mysql-connector-java-8.0.28.tar.gz"

ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]