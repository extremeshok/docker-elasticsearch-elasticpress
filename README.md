# docker-elasticsearch-elasticpress

https://hub.docker.com/r/extremeshok/elasticsearch-elasticpress

optimised elasticsearch server for wordpress elasticpress plugin

## Notes
* elasticsearch/elasticsearch:7.5.2
* added healthcheck
* still uses default entrypoint and cmd
* runs by default as a single node
* xpack disabled

## Plugins
* ingest-attachment : attachment (document/pdf) support
* analysis-smartcn : support for chinese users or mixed english/chinese in posts.
* analysis-phonetic : ignore spelling (support for mispelt keywords)

## Possible Todo
Add support for ReadonlyREST Suite
https://github.com/beshu-tech/readonlyrest-docs/blob/master/elasticsearch.md
