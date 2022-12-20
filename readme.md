### platypus-platel

with Elasticsearch, Logstash and Kibana ([ELK](https://www.elastic.co/))

This is a lightweight version without wiki, no php, no cerebro, no enterprise search and single-node elastic.

See:
* https://github.com/lhsradek/platypus-lhsdock
* https://github.com/lhsradek/platypus-lhsdock/tree/main/extras/dokuwiki/config/dokuwiki/data/pages

#### setup
create .env file

```# cp .env.dist .env```

```# bin/install```

```# bin/setup```


#### install platel
```# bin/install```

#### setup platel
```# bin/setup```

#### run platel
```# bin/start```

#### restart platel
```# bin/restart```

```
================= STOP =================
Stopping platel-kibana    ... done
Stopping platel-logstash  ... done
Stopping platel-es01      ... done
Removing platel-kibana    ... done
Removing platel-logstash  ... done
Removing platel-es01      ... done
Removing platel-setup     ... done
Removing platel
================= START ================
Pulling setup       ... done
Pulling es01        ... done
Pulling kibana      ... done
Pulling logstash    ... done
Creating network "platel" with driver "bridge"
Creating platel-setup ... done
Creating platel-es01  ... done
Creating platel-kibana    ... done
Creating platel-logstash  ... done
```

#### stop platel
```# bin/stop```

#### remove platel
```# bin/all-remove```

#### Reposirories

| REPOSITORY                                            |  TAG       | SIZE        |
| ----------------------------------------------------- | ---------- | ----------- |
| [docker.elastic.co/elasticsearch/elasticsearch](https://hub.docker.com/_/elasticsearch) | 8.5.3      | 1.29GB      |
| [docker.elastic.co/kibana/kibana](https://hub.docker.com/_/kibana) | 8.5.3       | 711MB       |
| [logstash](https://hub.docker.com/_/logstash)         | 8.5.3      | 740MB       |
| docker.elastic.co/apm/apm-server                      | 8.5.3      | 148MB       |
| docker.elastic.co/beats/filebeat                      | 8.5.3      | 282MB       |
| docker.elastic.co/beats/heartbeat                     | 8.5.3      | 1.88GB      |
| docker.elastic.co/beats/metricbeat                    | 8.5.3      | 317MB       |

-----

| IMAGES               | PORTS                  | NAMES              | HOSTNAMES                            |  
| -------------------- | ---------------------- | ------------------ | ------------------------------------ |
| elasticsearch        |                        | platel-setup       | ```setup.platel```                   |
| elasticsearch        | 9200/tcp, 9300/tcp     | platel-es01        | ```es01.platel```                    |
| kibana               | 5601/tcp               | platel-kibana      | ```kibana.platel```                  |
| logstash             | 5044/tcp, 9600/tcp     | platel-logstash    | ```logstash.platel```                |
| apm-server           | 8200/tcp               | platel-apm-server  | ```apm-server.platel```              |
| filebeat             |                        | platel-filebeat    | ```filebeat.platel```                |
| heartbeat            |                        | platel-heartbbeat  | ```heartbeat.platel```               |
| metricbeat           |                        | platel-metricbeat  | ```metricbeat.platel```              |


-----

##### Cluster uuid

Set ```CLUSTER_UUID```  in the ```.env```

```
# curl -s -X GET --cacert certs/ca/ca.crt -u elastic:[KIBANA_PASSWORD] https://es01:9200/?pretty | grep cluster_uuid
```
display such like this:
```
  "cluster_uuid" : "Eft1LUxGR5af29XSygQMHA",
```

Or see
```# docker logs -f platel-setup
```
-----

* https://www.facebook.com/radek.kadner/
* https://www.linkedin.com/in/radekkadner/
* mailto:radek.kadner@gmail.com
