#!/bin/bash

useradd --no-create-home node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar -zxvf node_exporter-1.0.1.linux-amd64.tar.gz
cp node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/node_exporter
rm -rf node_exporter-1.0.1.linux-amd64.tar.gz node_exporter-1.0.1.linux-amd64

#sudo cp ${path}/node-exporter.service /etc/systemd/system/node-exporter.service
wget -O /etc/systemd/system/node-exporter.service https://raw.githubusercontent.com/Serhikozak/Eshop/master/node-exporter.service

systemctl daemon-reload
systemctl enable node-exporter
systemctl start node-exporter

