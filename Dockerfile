from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

# locales
#env LC_ALL C.UTF-8

# helper
run apt-get update && apt-get install -y curl

# java
run apt-get update && apt-get install -y default-jre-headless

# elasticsearch
run mkdir -p /opt/elasticsearch && \
  curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.tar.gz | \
  tar -xz --directory /opt/elasticsearch --strip-components 1

cmd ["/opt/elasticsearch/bin/elasticsearch"]
expose 9200 9300
