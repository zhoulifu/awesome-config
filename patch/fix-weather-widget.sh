#!/usr/bin/env bash

read -p 'Path to vicious lib(default: /usr/share/awesome/lib/vicious): ' LIB_PATH
[[ -n "$LIB_PATH" ]] || LIB_PATH='/usr/share/awesome/lib/vicious'
WEATHER_LUA="$LIB_PATH/widgets/weather.lua"
[[ -f "$WEATHER_LUA" ]] || { echo "No such file $WEATHER_LUA";exit 1; }

sudo sed -i s/weather\\.noaa\\.gov\\/pub/tgftp\\.nws\\.noaa\\.gov/g $WEATHER_LUA
