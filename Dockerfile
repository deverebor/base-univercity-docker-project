# Use uma imagem base leve, como o NGINX, como base
FROM nginx:alpine

# Copie o arquivo index.html para o diretório padrão do servidor web do NGINX
COPY index.html /usr/share/nginx/html

# Exponha a porta 80 (a porta padrão do NGINX)
EXPOSE 80
