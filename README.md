Elasticsearch in Docker container
=================================

Run image from Docker hub:

    $ sudo docker run -p 9200:9200 webwurst/elasticsearch

Build local after cloning this repo:

    $ sudo docker-compose build
    $ sudo docker-compose up
    $ xdg-open http://localhost:9200
