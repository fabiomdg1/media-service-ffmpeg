FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg e dependências (Alpine Linux)
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip

USER node

EXPOSE 5678

CMD ["n8n"]
