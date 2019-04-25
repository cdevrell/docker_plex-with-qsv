# Docker_plex-with-qsv

Example Usage:
~~~~
docker run -d \
     --name plex \
     --restart=unless-stopped \
     --network=xxxx \
     --ip=xxx.xxx.xxx.xxx \
     -v plex_db:/config \
     -v plex_logs:"/config/Library/Application Support/Plex Media Server/Logs" \
     -v plex_transcode:/transcode \
     -v /data/nas/media/TV:/data/TV \
     -v /data/nas/media/Movies:/data/Movies \
     --device /dev/dri/card1:/dev/dri/card0 \
     --device /dev/dri/renderD129:/dev/dri/renderD128 \
     cdevrell/plex-with-qsv
~~~~
