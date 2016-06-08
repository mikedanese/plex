FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl "https://downloads.plex.tv/plex-media-server/0.9.16.6.1993-5089475/plexmediaserver_0.9.16.6.1993-5089475_amd64.deb" \
  -o plexmediaserver.deb
RUN dpkg -i plexmediaserver.deb
ADD default /etc/default/plexmediaserver

CMD start_pms
