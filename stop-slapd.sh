#!/bin/bash
echo "Trying to stop LDAP using systemctl command..."
sudo systemctl stop slapd &

echo "Giving it 20 seconds to finish..."
sleep 20

echo "Kill service command if still running ..."
killall slapd
sleep 5
killall -9 slapd
sleep 5

SLAPD_PID=`pgrep slapd`

if [ -n "SLAPD_PID" ]; then
    echo -n "LDAP is still running. Killing"
    while test -d /proc/$SLAPD_PID; do
      echo -n "."
      kill $SLAPD_PID
      sleep 1
    done
    echo ""
fi
echo "Done!"
