#!/bin/bash

export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

# Tip: Make a local copy of this script to avoid it being overwritten by steam.
# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
# NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
steamcmd +login anonymous +force_install_dir /home/<username>/Valheim +app_update 896660 +quit

#NOTE: if you manually installed steamcmd, comment out the above line and uncomment below.
# change this to the location of your steamcmd.sh file if you did a manual install:

#<DIRECTORY>/steamcmd.sh +login anonymous +force_install_dir /home/<username>/Valheim +app_update 896660 +quit

./valheim_server.x86_64 -name "<Server Name>" -port 2457 -world "Dedicated" -password "<The Password>" -public 1 > /dev/null &

export LD_LIBRARY_PATH=$templdpath

echo "Server started"
echo ""
#read -p "Press RETURN to stop server"
#echo 1 > server_exit.drp

#echo "Server exit signal set"
#echo "You can now close this terminal"

while :
do
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
echo "valheim.service: timestamp ${TIMESTAMP}"
sleep 60
done

