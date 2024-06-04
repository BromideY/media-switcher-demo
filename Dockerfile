FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libxkbcommon0 \
    libpango-1.0-0 \
    libcairo2 \
    libasound2 \
    xvfb

COPY lib/ /media-switcher-demo/lib/
COPY Start.sh /media-switcher-demo/
COPY Stop.sh /media-switcher-demo/
COPY srs/srs /media-switcher-demo/srs/
COPY srs/srs.conf /media-switcher-demo/srs/
COPY media_switcher/ /media-switcher-demo/media_switcher/
COPY scene_editor/ /media-switcher-demo/scene_editor/
COPY MediaSwitcher /media-switcher-demo/

ENTRYPOINT ["bash","/media-switcher-demo/Start.sh"]



