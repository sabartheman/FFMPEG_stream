\#!/bin/bash


raspivid -t 0 -h 326 -w 580 -fps 25 -vf -hf -b 1024000 -o - | tee -a matching_baud_rate.h264 | cvlc stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8080/}' -vvv :demux=h264
