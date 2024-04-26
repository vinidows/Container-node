# Dockerizando uma Aplicação NodeJS com Docker

Este projeto visa demonstrar como criar um contêiner Docker para uma aplicação baseada em Node.js, usando o Docker e o Git para buscar a aplicação.

## Pré-requisitos

Antes de começar, certifique-se de ter o Docker instalado em sua máquina. Você pode encontrar instruções de instalação para diferentes sistemas operacionais [aqui](https://docs.docker.com/get-docker/).

## Como Usar

Siga as etapas abaixo para construir e executar o contêiner Docker:

1. **Clone o Repositório:**
   ```bash
   git clone https://github.com/vinidows/Container-node.git

2. **Construa o Contêiner:**
   Navegue até o diretório clonado e execute o seguinte comando para construir o contêiner:
   ```bash
   cd repositorio
   docker build -t nome-do-seu-contêiner .

3. **Execute o Conteiner:**
   Depois que o container for construido, execute-o com o seguinte comando:
   (```docker container run -p 8080:8080 nomeDoContêiner```)

4. **Acesse a aplicação no seu navegador:**
   Abra um navegador da web e acesse http://localhost:8080 para visualizar a aplicação em execução.
  
