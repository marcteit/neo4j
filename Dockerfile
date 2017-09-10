FROM neo4j:enterprise

ADD set-config.sh .
RUN chmod +x set-config.sh

CMD ["./set-config.sh"]