FROM n8nio/n8n:2.6.3

USER root

# Instalar ffmpeg e dependências
RUN apt-get update \
    && apt-get install -y ffmpeg python3 python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Voltar para o usuário padrão do n8n
USER node

# Expor porta padrão do n8n
EXPOSE 5678

# Comando padrão
CMD ["n8n"]
