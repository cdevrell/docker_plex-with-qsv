FROM plexinc/pms-docker:latest

RUN apt-get -y update
RUN apt-get -y install i965-va-driver vainfo

VOLUME /config /transcode
EXPOSE 32400/tcp 3005/tcp 8324/tcp 32469/tcp 1900/udp 32410/udp 32412/udp 32413/udp 32414/udp

# Example Usage
# sudo docker build --no-cache -t plex-with-qsv .
# sudo docker run -d \
#     --name plex \
#     --restart=unless-stopped \
#     --network=xxxxx \
#     --ip=xxx.xxx.xxx.xxx \
#     -v plex_db:/config \
#     -v plex_logs:"/config/Library/Application Support/Plex Media Server/Logs" \
#     -v /data/ssd/plex_transcode:/transcode \
#     -v /data/nas/media/TV:/data/TV \
#     -v /data/nas/media/Movies:/data/Movies \
#     --device /dev/dri/card1:/dev/dri/card0 \
#     --device /dev/dri/renderD129:/dev/dri/renderD128 \
#     plex-with-qsv