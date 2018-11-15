FROM phillmac/ffmpeg-build:18.04-tags_n4.1 AS mkvserver_mk2_clone

ENV PKG_CONFIG_PATH=/root/ffmpeg_build/lib/pkgconfig
RUN git clone https://github.com/klaxa/mkvserver_mk2 ~/mkvserver_mk2

FROM mkvserver_mk2_prebuilder AS mkvserver_mk2_builder

RUN cd ~/mkvserver_mk2 && make
