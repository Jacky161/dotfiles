#!/usr/bin/env bash

# pactl list sources | grep "Name"
SOURCE=${SOURCE:-"alsa_input.usb-???"}
# ls -l /dev/v4l/by-id
V4L2_PATH=${V4L2_PATH:-"av://v4l2:/dev/v4l/by-id/???"}

function stop(){
    pactl unload-module module-loopback
}

function start(){
    pactl load-module module-loopback \
    source="$SOURCE" \
    latency_msec=1
}

if [ "$1" == "-k" ]
then
   stop
else
   start
   mpv --demuxer-lavf-o=video_size=1920x1080,input_format=yuyv422,framerate=60 --profile=low-latency --untimed "$V4L2_PATH"
   stop
fi
