#!/bin/bash

# set number of workspaces
wmctrl -n 10

# set name of workspaces
gsettings set org.cinnamon.desktop.wm.preferences workspace-names '@as ["Telegram  ","Code      ","Browser   ","Workspace4","Workspace5","Workspace6","Workspace7","Workspace8","Skype     ","Spotify   "]'


# start application
telegram-desktop &
pid1=$!

chromium-browser &
pid2=$!

spotify &
pid3=$!


function move {
    if [[ $(wmctrl -l -p | grep "$1  ") ]]; then
	wmctrl -r $2 -t $3
	echo 1
    else
	echo 0
    fi
}


while [[ $((ok1 + ok2 + ok3)) -lt 3 ]]; do

    ok1=$(move $pid1 "telegram" 0)
    
    ok2=$(move $pid2 "chromium" 2)

    ok3=$(move $pid3 "spotify"  9)


    sleep 0.5
done

echo "FINISH!!!"
