#!/bin/bash
set -xe

# Parar Tomcat
if sudo systemctl is-active --quiet tomcat; then
    sudo systemctl stop tomcat
else
    sudo /usr/local/tomcat9/bin/shutdown.sh || true
fi

sleep 5

echo "Tomcat parado!"
