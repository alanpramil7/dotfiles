#!/bin/bash

DIR=$HOME/Pictures/wallpaper
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

swaybg -m fill -i ${DIR}/${RANDOMPICS}
notify-send "${RANDOMPICS}"
