FROM ralfbosz/jdk8
MAINTAINER "Ralf Bosz <ralf@bosz.com>"

ENV LOGSTASH_URL https://download.elastic.co/logstash/logstash/logstash-1.5.3.tar.gz
ENV LOGSTASH_HOME /opt/logstash-1.5.3

# Install JDK8
WORKDIR /opt
RUN wget -nv --no-check-certificate ${LOGSTASH_URL} && \
    tar -xf logstash-*.tar.gz && \
    rm logstash-*.tar.gz

ENV LOGSTASH_URL ""
