FROM java:openjdk-7-jre

# elasticsearch
RUN curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.tar.gz \
  | tar -xz --directory /usr/local/src --strip-components 1

CMD ["/usr/local/src/bin/elasticsearch"]
EXPOSE 9200 9300
