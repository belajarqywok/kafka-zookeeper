#!/bin/bash

apt update && apt upgrade
apt install openjdk-8-jdk openjdk-8-jre

wget https://archive.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz
tar -xzf kafka_2.12-2.3.0.tgz
rm -irf kafka_2.12-2.3.0.tgz
cd $(ls | grep kafka) && mv -fin * /bin


