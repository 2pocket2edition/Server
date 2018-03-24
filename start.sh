#!/bin/bash

while true
do
    echo "Press Ctrl+C to stop"
    sleep 3
    git pull
    mvn compile --non-recursive exec:exec -Dexec.executable="java" -Dexec.args="-classpath %classpath -Xmx6G cn.nukkit.Nukkit"
done
