#!/bin/bash

option=$(printf "$(ls ~/v-app/Launchers)" | rofi -dmenu -i)

if [ -f "$HOME/v-app/Launchers/$option" ]; then
	cd "$HOME/v-app/Launchers" && "./$option";
fi

