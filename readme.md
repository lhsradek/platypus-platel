### platypus-platel

with Elasticsearch, Logstash and Kibana ([ELK](https://www.elastic.co/))

#### setup
create .env file

```# cp .env.dist .env```

```# bin/install```

```# bin/setup```

See https://github.com/lhsradek/platypus-lhsdock/tree/main/extras/dokuwiki/config/dokuwiki/data/pages

#### run platel
```# bin/start```

#### restart platel
```# bin/restart```

```
================= STOP =================
Stopping platel-kibana    ... done
Stopping platel-logstash  ... done
Stopping platel-es02      ... done
Stopping platel-es01      ... done
Removing platel-kibana    ... done
Removing platel-logstash  ... done
Removing platel-es02      ... done
Removing platel-es01      ... done
Removing platel-setup     ... done
Removing platel
================= START ================
Pulling setup       ... done
Pulling es01        ... done
Pulling es02        ... done
Pulling kibana      ... done
Pulling logstash    ... done
Creating network "platel" with driver "bridge"
Creating platel-setup ... done
Creating platel-es01  ... done
Creating platel-es02  ... done
Creating platel-kibana    ... done
Creating platel-logstash  ... done
```

#### stop platel
```# bin/stop```

#### remove platel
```# bin/all-remove```

#### Reposirories

| REPOSITORY                                            |  TAG       | SIZE        | OPTIONAL
| ----------------------------------------------------- | ---------- | ----------- | ----------------
| [docker.elastic.co/elasticsearch/elasticsearch](https://hub.docker.com/_/elasticsearch) | 8.5.2      | 1.29GB      |
| [docker.elastic.co/kibana/kibana](https://hub.docker.com/_/kibana) | 8.5.2      | 707MB       |
| [logstash](https://hub.docker.com/_/logstash)         | 8.5.2      | 746MB       |
| docker.elastic.co/apm/apm-server                      | 8.5.2      | 149MB       |
| docker.elastic.co/beats/filebeat                      | 8.5.2      | 281MB       |

-----

| IMAGES               | PORTS                  | NAMES              | HOSTNAMES                            | OPTIONAL  
| -------------------- | ---------------------- | ------------------ | ------------------------------------ | --------
| elasticsearch        |                        | platel-setup       | ```setup.pt.platel```                | *
| elasticsearch        | 9200/tcp, 9300/tcp     | platel-es01        | ```es01.pt.platel```                 |
| elasticsearch        | 9201/tcp, 9301/tcp     | platel-es02        | ```es02.pt.platel```                 | 
| kibana               | 5601/tcp               | platel-kibana      | ```kibana.pt.platel```               |
| apm-server           | 5066/tcp, 8200/tcp     | platel-apm-server  | ```apm.pt.platel```                  | *
| filebeat             | 5066/tcp               | platel-filebeat    | ```filebeat.pt.platel```             | *
| logstash             | 5044/tcp, 9600/tcp     | platel-logstash    | ```logstash.pt.platel```             | *

-----

##### Cluster uuid

Set ```CLUSTER_UUID```  in the ```.env```

```
# curl -s -X GET --cacert certs/ca/ca.crt -u elastic:[KIBANA_PASSWORD] https://es01.docker.nginx.local:9200/?pretty | grep cluster_uuid
```
display such like this:
```
  "cluster_uuid" : "Eft1LUxGR5af29XSygQMHA",
```
-----

* https://www.facebook.com/radek.kadner/
* https://www.linkedin.com/in/radekkadner/
* mailto:radek.kadner@gmail.com
