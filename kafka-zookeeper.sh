#!/bin/bash
apt -y update
apt -y upgrade
apt install -y openjdk-8-jdk openjdk-8-jre

wget https://archive.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz
mv $(ls | grep kafka) /opt

tar -xvzf /opt/$(ls | grep kafka)
rm /opt/$(ls | grep tgz)

mv /opt/$(ls | grep kafka) /opt/kafka
mv {server,zookeeper}.properties /opt/kafka/config

mv kafka.service /etc/systemd/system
mv zookeeper.service /etc/systemd/system

systemctl enable kafka
systemctl enable zookeeper

systemctl start kafka
systemctl start zookeeper
