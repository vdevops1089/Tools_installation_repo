#!/bin/bash
apt update -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
apt install openjdk-11-jdk -y
apt-get update -y
apt-get install fontconfig openjdk-11-jre -y
apt-get install jenkins -y
apt install net-tools -y
netstat -lntp
