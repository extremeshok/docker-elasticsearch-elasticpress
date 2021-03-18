FROM docker.elastic.co/elasticsearch/elasticsearch:7.9 AS BUILD

LABEL mantainer="Adrian Kriel <admin@extremeshok.com>" vendor="eXtremeSHOK.com"

ENV OS_LOCALE="en_US.UTF-8"

ENV LANG=${OS_LOCALE}
ENV LANGUAGE=${OS_LOCALE}
ENV LC_ALL=${OS_LOCALE}

RUN echo "**** Install packages ****" \
# attachment doc/pdf/etc support
  && elasticsearch-plugin install --batch -s ingest-attachment \
# CN users
  && elasticsearch-plugin install --batch -s analysis-smartcn \
# ignore spelling
  && elasticsearch-plugin install --batch -s analysis-phonetic

HEALTHCHECK CMD curl --fail http://127.0.0.1:9200 || exit 1

# Single Node
ENV bootstrap.memory_lock=true
ENV discovery.type=single-node
ENV cluster.routing.allocation.disk.threshold_enabled=false
