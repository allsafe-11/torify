#!/bin/bash

if [ "$1" = "off" ]; then
    echo "Turning off tor services..."
    source torsocks off
    sudo /etc/init.d/tor stop
    echo -e "\nCurrent IP address is:\t"
    wget -qO - https://api.ipify.org; echo
else
    echo "Turning on tor services..."
    sudo /etc/init.d/tor start
    source torsocks on
    sleep 1
    echo -e "\nCurrent IP address is:\t"
    wget -qO - https://api.ipify.org; echo
fi
