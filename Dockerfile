FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg e dependências (Debian)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    python3 \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678

CMD ["n8n"]