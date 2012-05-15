#!/bin/bash
SOLR_HOME=<PATH>/solr
SOLRCONF_HOME=<PATH>/solrconf/multicore

cd $SOLR_HOME

exec 2>&1
exec java -Dsolr.solr.home=$SOLRCONF_HOME -Xmx256m -jar start.jar etc/jetty-logging.xml etc/jetty.xml
