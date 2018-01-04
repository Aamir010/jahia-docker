#!/bin/bash

if [ -d "Jahia" ]; then

  cd /opt/Jahia

  sh start.sh

else

 sleep 10

 java -jar DigitalExperienceManager.jar auto-install.xml

  cd /opt/Jahia

  sh start.sh

fi
