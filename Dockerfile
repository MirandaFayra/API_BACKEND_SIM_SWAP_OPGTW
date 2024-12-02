# Use a imagem oficial do Node.js como base
FROM node:20

# Defina o diretório de trabalho para a aplicação
WORKDIR /app

# Copie o arquivo package.json e package-lock.json (se existir)
COPY /package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código da aplicação para o container
COPY /src .

# Exponha a porta 8080 (a porta onde sua API estará rodando)
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]