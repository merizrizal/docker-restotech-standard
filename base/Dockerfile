FROM ubuntu:20.04
WORKDIR /root

ADD ./config ./initial-config

RUN chmod +x ./initial-config/install-script.sh
RUN ./initial-config/install-script.sh
