# Estágio 1: Usar Node para rodar o servidor de desenvolvimento
FROM node:24-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos de dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta padrão do Angular
EXPOSE 4200

# Comando para rodar o projeto
CMD ["npm", "start", "--", "--host", "0.0.0.0"]