#!/bin/bash
echo "Trying to start LDAP service ..."
sudo systemctl start slapd &
sleep 10

echo "Service is still starting"


SLAPD_PID=`pgrep slapd`
if [ -n "$SLAPD_PID" ];then
    echo -n "LDAP is still trying to run"
    while test -d /proc/$SLAPD_PID; do
        echo -n "."
        sleep 1
        sudo systemctl status slapd 
    done
    echo ""
fi 
echo "Done!"