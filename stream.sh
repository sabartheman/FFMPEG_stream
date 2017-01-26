\#!/bin/bash


raspivid -t 0 -h 1080 -w 1920 -fps 25 -vf -hf -b 2000000 -o - | tee -a flight_july_16_2015.h264 | cvlc stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8080/}' -vvv :demux=h264
