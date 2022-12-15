#!/usr/bin/bash

# docker exec -it platel-metricbeat bash
# ~/bin/install.bash               
# exit
# docker stop platel-metricbeat
# docker start platel-metricbeat

rm /usr/share/metricbeat/modules.d/beat-xpack.yml.disabled
cp /root/bin/beat-xpack.yml /usr/share/metricbeat/modules.d/beat-xpack.yml
rm /usr/share/metricbeat/modules.d/elasticsearch-xpack.yml.disabled
cp /root/bin/elasticsearch-xpack.yml /usr/share/metricbeat/modules.d/elasticsearch-xpack.yml
rm /usr/share/metricbeat/modules.d/kibana-xpack.yml.disabled
cp /root/bin/kibana-xpack.yml /usr/share/metricbeat/modules.d/kibana-xpack.yml
rm /usr/share/metricbeat/modules.d/logstash-xpack.yml.disabled
cp /root/bin/logstash-xpack.yml /usr/share/metricbeat/modules.d/logstash-xpack.yml
rm /usr/share/metricbeat/modules.d/system.yml
cp /root/bin/system.yml.disabled /usr/share/metricbeat/modules.d/system.yml.disabled
rm /usr/share/metricbeat/modules.d/docker.yml.disabled
cp /root/bin/docker.yml /usr/share/metricbeat/modules.d/docker.yml
chown root.root /usr/share/metricbeat/modules.d/*
