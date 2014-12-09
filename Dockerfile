FROM ubuntu:latest
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

RUN apt-get update && apt-get -y dist-upgrade && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ADD 50-default.conf /etc/rsyslog.d/50-default.conf

EXPOSE 514
EXPOSE 514/udp

CMD ["/tmp/run.sh"]
