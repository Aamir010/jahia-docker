#!/bin/bash

sleep 10

java -jar DigitalExperienceManager.jar /tmp/auto-install.xml

ln -s /usr/local/DigitalExperienceManager-EnterpriseDistribution-7.1.1.0 /usr/local/DigitalExperienceManager

cd /usr/local/DigitalExperienceManager

sh start.sh
