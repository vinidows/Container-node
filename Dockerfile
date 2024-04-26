FROM ubuntu
ARG NODE_MAJOR=20
RUN apt-get update && \
    apt-get install -y ca-certificates curl gnupg git && \
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get update && \
    apt-get install nodejs -y && \
    rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/vinidows/conversao-temperatura.git
WORKDIR conversao-temperatura/src/ 
RUN npm install
EXPOSE 8080
ENTRYPOINT [ "node", "server.js"]