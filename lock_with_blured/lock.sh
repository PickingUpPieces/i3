#!/bin/bash
TMPBG=tmp_blurred_img.png	#Change path where to safe the blurred pic
#RES=1920x1080 
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=10:1" -vframes 1 $TMPBG #-loglevel quiet

./betterlockscreen.sh -l

