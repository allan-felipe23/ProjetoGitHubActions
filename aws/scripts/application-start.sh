#!/bin/bash
set -xe

# Iniciar Tomcat
sudo systemctl start tomcat || sudo /usr/local/tomcat9/bin/startup.sh

# Aguardar inicializar
sleep 10

echo "Tomcat iniciado!"
