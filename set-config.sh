#!/bin/sh

sed -i -e \
  "s|^#dbms.mode=CORE$|dbms.mode=CORE|" \
  conf/neo4j.conf

sed -i -e \
  "s|^#causal_clustering.expected_core_cluster_size=.*$|causal_clustering.expected_core_cluster_size=$expected_core_cluster_size|" \
  conf/neo4j.conf

sed -i -e \
  "s|^#causal_clustering.initial_discovery_members=.*$|causal_clustering.initial_discovery_members=$initial_discovery_members|" \
  conf/neo4j.conf

/docker-entrypoint.sh neo4j