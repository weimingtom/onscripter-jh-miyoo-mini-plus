#!/bin/sh
cd $(dirname "$0")
#SDL_VIDEO_FBCON_ROTATION=UD 
./onscripter > /mnt/SDCARD/ons/a.txt 2>&1
sync
