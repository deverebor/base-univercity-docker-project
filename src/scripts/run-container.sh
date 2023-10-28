#!/bin/bash

# Defina o nome e a tag da imagem
imagem="minha-imagem-web"
tag="1.0"

# Verifique o sistema operacional em execução
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
  # Windows (Git Bash)
  winpty docker run -d -p 8080:80 ${imagem}:${tag}
else
  # Linux ou outros sistemas
  docker run -d -p 8080:80 ${imagem}:${tag}
fi
