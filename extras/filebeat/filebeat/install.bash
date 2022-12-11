#!/usr/bin/bash

# docker exec -it platel-filebeat bash
# ~/bin/install.bash 
# exit
# docker stop platel-filebeat
# docker start platel-filebeat

rm /usr/share/filebeat/modules.d/elasticsearch.yml.disabled
cp /root/bin/elasticsearch.yml  /usr/share/filebeat/modules.d/elasticsearch.yml
rm /usr/share/filebeat/modules.d/kibana.yml.disabled
cp /root/bin/kibana.yml  /usr/share/filebeat/modules.d/kibana.yml
rm /usr/share/filebeat/modules.d/traefik.yml.disabled
cp /root/bin/traefik.yml  /usr/share/filebeat/modules.d/traefik.yml
