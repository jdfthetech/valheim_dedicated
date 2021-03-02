# Valheim Dedicated Linux Files

These are the files for the Valheim Dedicated server video.
Simply clone these, do your edits, make sure the valheim.sh file is executable and you are ready to go.

## Valve's steamcmd page (specifically about anonymous installs):
https://developer.valvesoftware.com/wiki/SteamCMD#Anonymous

## Installing Valheim with steamcmd:

mkdir ~/Valheim 

steamcmd +login anonymous +force_install_dir /home/\<username\>/Valheim +app_update 896660 validate +exit
