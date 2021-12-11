FROM apache_server:1.0
WORKDIR /root

ADD ./config ./initial-config

RUN chmod +x ./initial-config/initial-script.sh
RUN ./initial-config/initial-script.sh

EXPOSE 80
EXPOSE 443
