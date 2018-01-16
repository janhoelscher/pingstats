# Pingstats

Maintained by jhoelscher <coding[at]jhoelscher.eu>
-----

## Description
Through the docker-compose file you can create an standalone instance to simply monitor some hosts. It uses the `check_ping` plugin from the well-known monitoring plugins of Icinga or Nagios. 

## Used sofware

###### Worker-Container: Execute monitoring script based on cronjobs
* OS: [Debian](https://www.debian.org/index.de.html) Stretch (9) - EOL 2022
* Process control system: [supervisor](http://supervisord.org/)
* Job scheduler: Cron
* Ping: `check_ping` from [Monitoring-Plugins](https://www.monitoring-plugins.org/)

###### Grafana-Container: [Official Grafana Docker image](https://hub.docker.com/r/grafana/grafana/)
###### InfluxDB-Container: [Official InfluxDB Docker image](https://hub.docker.com/_/influxdb/)

## Quickstart :rocket:

First build the worker image based on Dockerfile
```shell
# docker-compose build
```

Second run create the instances
```shell
# docker-compose up -d
```



## To Do

- [ ] Random generated passwords
