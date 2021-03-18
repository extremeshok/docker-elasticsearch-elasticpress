# docker-elasticsearch-elasticpress

https://hub.docker.com/r/extremeshok/elasticsearch-elasticpress

optimised elasticsearch server for wordpress elasticpress plugin

## Notes
* elasticsearch/elasticsearch:7.9.3
* ReadonlyREST Free Version
* added healthcheck
* still uses default entrypoint and cmd
* runs as a single node

## Plugins
* ingest-attachment : attachment (document/pdf) support
* analysis-smartcn : support for chinese users or mixed english/chinese in posts.
* analysis-phonetic : ignore spelling (support for mispelt keywords)
* readonlyrest : user permissions

## ReadonlyREST Guide
https://github.com/beshu-tech/readonlyrest-docs/blob/master/elasticsearch.md
