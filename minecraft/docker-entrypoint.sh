#!/bin/bash
envsubst </minecraft/server.template.properties >/minecraft/server.properties
cd /minecraft
java -Xms3G -Xmx3G -jar server.jar nogui
