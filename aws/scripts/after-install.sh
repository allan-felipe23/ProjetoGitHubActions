#!/bin/bash
set -xe

# Copiar WAR do S3 para Tomcat
aws s3 cp s3://SEU-BUCKET-AQUI/SpringBootHelloWorldExampleApplication.war \
    /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war

# Definir permissões
sudo chown -R tomcat:tomcat /usr/local/tomcat9/webapps
sudo chmod -R 755 /usr/local/tomcat9/webapps
