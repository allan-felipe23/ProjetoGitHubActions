#!/bin/bash
set -xe

# Aguardar aplicação inicializar
sleep 10

# Testar se está respondendo
curl -f http://localhost:8080/SpringBootHelloWorldExampleApplication/ || exit 1

echo "Aplicação validada!"
