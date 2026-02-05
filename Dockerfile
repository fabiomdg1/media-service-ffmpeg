FROM n8nio/n8n:2.6.3

USER root

RUN apt-get update \
 && apt-get install -y ffmpeg \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER node
