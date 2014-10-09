from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

# java
run apt-get update && apt-get install -y default-jre-headless

# elasticsearch
run mkdir -p /opt/elasticsearch \
  && apt-get update && apt-get install -y curl \
  && curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.0.Beta1.tar.gz \
    | tar -xz --directory /opt/elasticsearch --strip-components 1

cmd ["/opt/elasticsearch/bin/elasticsearch"]
expose 9200 9300
