# Debian 9 Stretch - EOL 2022
FROM debian:stretch

MAINTAINER Jan Hoelscher <coding@jhoelscher.eu> 

# Add scripts and configs to machine
ADD content/ /

# Install basic software
RUN export DEBIAN_FRONTEND=noninteractive \
     && apt-get update \
     && apt-get upgrade -y \
     && apt-get install -y --no-install-recommends \
          cron \
          curl \
          git \
          monitoring-plugins \
          pwgen \
          sudo \
          supervisor \
	  unzip \
          vim \
          wget \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/*

# Link script to bin for shortcut use
RUN ln -s /opt/pingstats/pingstat /usr/bin/pingstat

# Initialize and run Supervisor
ENTRYPOINT ["/opt/run"]
