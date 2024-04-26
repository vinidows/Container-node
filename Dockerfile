FROM alpine
ARG NODE_MAJOR=20

# Instalando dependências e Node.js
RUN apk update && \
    apk add --no-cache ca-certificates curl gnupg git nodejs npm && \
    rm -rf /var/cache/apk/*

# Clonando o repositório e instalando dependências do Node.js
RUN git clone https://github.com/vinidows/conversao-temperatura.git /app
WORKDIR /app/src
RUN npm install && \
    npm audit fix

# Expondo a porta e definindo o ponto de entrada
EXPOSE 8080
CMD ["node", "server.js"]
