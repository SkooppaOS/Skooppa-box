#!/usr/bin/env bash### INSTALL jdk8

echo "------------ INSTALL JAVA START ------------"

## Get dependencies (for adding repos)
sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list'
sh -c 'echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list'

## Get key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

## Just in case
apt-get update

## To accept the Oracle license
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

## Install Java
apt-get -y install oracle-java8-installer


## add to environment
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JRE_HOME=/usr/lib/jvm/java-8-oracle

echo "------------ INSTALL JAVA END ------------"