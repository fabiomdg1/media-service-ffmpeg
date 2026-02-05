FROM n8nio/n8n:2.6.3

USER root

# Instalar ffmpeg e dependências (Alpine)
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip

USER node
EXPOSE 5678
CMD ["n8n"]