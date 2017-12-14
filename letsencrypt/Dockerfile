FROM ubuntu:16.04
MAINTAINER JAN van Brügge

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:certbot/certbot
RUN apt-get update
RUN apt-get install -y certbot

COPY renewCert.sh /root
COPY getCert.sh /root
RUN chmod +x /root/renewCert.sh
RUN chmod +x /root/getCert.sh

CMD ["bash", "/root/renewCert.sh"]
