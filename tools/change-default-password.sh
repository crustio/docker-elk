#!/bin/bash

files="README.md docker-compose.yml docker-stack.yml .github/workflows/ci.yml extensions/apm-server/config/apm-server.yml extensions/curator/config/curator.yml extensions/enterprise-search/enterprise-search-compose.yml extensions/enterprise-search/README.md extensions/enterprise-search/config/enterprise-search.yml extensions/metricbeat/config/metricbeat.yml kibana/config/kibana.yml logstash/config/logstash.yml logstash/pipeline/logstash.conf"

for file in $files
do
    sed -i "s/$1/$2/g" $file
done
