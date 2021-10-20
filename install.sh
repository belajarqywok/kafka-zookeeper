#!/bin/bash

apt update && apt upgrade
apt install openjdk-8-jdk openjdk-8-jre

wget https://www.apache.org/dyn/closer.cgi?path=/kafka/3.0.0/kafka_2.12-3.0.0.tgz
tar -xzf kafka_2.12-3.0.0.tgz
rm -irf kafka_2.12-3.0.0.tgz
cd $(ls | grep kafka) && mv -fin * /bin
