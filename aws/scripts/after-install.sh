#!/bin/bash
set -xe

# Copiar WAR do S3 para Tomcat
aws s3 cp s3://devops-app-deploy-492683309070/SpringBootHelloWorldExampleApplication.war \
    /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war

# Definir permissões
sudo chown -R tomcat:tomcat /usr/local/tomcat9/webapps
sudo chmod -R 755 /usr/local/tomcat9/webapps
