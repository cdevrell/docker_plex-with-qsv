FROM plexinc/pms-docker:latest

RUN apt-get -y update
RUN apt-get -y install i965-va-driver vainfo

VOLUME /config /transcode
EXPOSE 32400/tcp 3005/tcp 8324/tcp 32469/tcp 1900/udp 32410/udp 32412/udp 32413/udp 32414/udp
