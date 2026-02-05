FROM n8nio/n8n:1.70.0

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678

CMD ["n8n"]
