FROM neo4j:enterprise

ADD set-config.sh /var/lib/neo4j/
RUN chmod +x /var/lib/neo4j/set-config.sh

CMD ["./set-config.sh"]