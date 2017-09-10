#!/bin/sh

sed -i -e \
  "s|^#dbms.mode=CORE$|dbms.mode=CORE|" \
  /var/lib/neo4j/conf/neo4j.conf

sed -i -e \
  "s|^#causal_clustering.expected_core_cluster_size=.*$|causal_clustering.expected_core_cluster_size=$expected_core_cluster_size|" \
  /var/lib/neo4j/conf/neo4j.conf

sed -i -e \
  "s|^#causal_clustering.initial_discovery_members=.*$|causal_clustering.initial_discovery_members=$initial_discovery_members|" \
  /var/lib/neo4j/conf/neo4j.conf

/docker-entrypoint.sh neo4j