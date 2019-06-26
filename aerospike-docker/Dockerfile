FROM aerospike/aerospike-server

ENV AEROSPIKE_MANAGEMENT_CONSOLE_VERSION 4.0.20

RUN \
  apt-get update -y \
  && apt-get install -y wget python python-dev gcc\
  && wget "https://www.aerospike.com/download/amc/${AEROSPIKE_MANAGEMENT_CONSOLE_VERSION}/artifact/ubuntu12" -O aerospike-amc.deb \
  && dpkg -i aerospike-amc.deb

COPY conf/amc_entrypoint.sh /amc_entrypoint.sh
COPY conf/register.sh /register.sh
COPY conf/aerospike.conf /opt/aerospike/etc/aerospike.conf
COPY conf/amc.conf /etc/amc/amc.conf

RUN chmod +x /amc_entrypoint.sh

VOLUME ["/aerospike-udf"]

ENTRYPOINT ["/amc_entrypoint.sh"]
CMD ["asd", "--config-file", "/opt/aerospike/etc/aerospike.conf"]

EXPOSE 13000 3000 3001 3002 3003