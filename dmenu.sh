#!/bin/bash

option=$(printf "$(ls ~/v-app/Launchers)" | rofi -dmenu -i)

cd "$HOME/v-app/Launchers" && "./$option";

