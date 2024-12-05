# Especifique a imagem base
FROM node:22

# Defina o diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie os arquivos de definição de pacote
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto
COPY . .

# Exponha a porta que a aplicação usará
EXPOSE 8080

# Comando para iniciar a aplicação
CMD [ "node", "src/app.js" ]