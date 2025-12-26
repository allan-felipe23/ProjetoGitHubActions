#!/bin/bash
set -xe

# Atualizar sistema
sudo yum update -y

# Instalar Java
sudo yum install java-17-amazon-corretto -y

# Instalar Tomcat 9
if [ ! -d "/usr/local/tomcat9" ]; then
    cd /usr/local
    sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
    sudo tar -xzf apache-tomcat-9.0.70.tar.gz
    sudo mv apache-tomcat-9.0.70 tomcat9
    sudo rm apache-tomcat-9.0.70.tar.gz
fi

# Criar usuário tomcat
if ! id tomcat &>/dev/null; then
    sudo useradd -r -d /usr/local/tomcat9 tomcat
fi

# Definir permissões
sudo chown -R tomcat:tomcat /usr/local/tomcat9
