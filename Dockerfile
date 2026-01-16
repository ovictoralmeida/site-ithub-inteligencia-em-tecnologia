# Estágio 1: Build (Onde instalamos tudo e geramos os arquivos)
FROM node:22-alpine AS build-step
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Gera a pasta /dist/
RUN npx ng build --configuration production

# Estágio 2: Runtime
FROM nginx:alpine
# Copia o seu arquivo de config para dentro do container
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copia os arquivos do build
COPY --from=build-step /app/dist/site-ithub-inteligencia-em-tecnologia/browser /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]