#!/bin/bash

raspivid -t 0 -h 1024 -w 1980 -fps 25 -vf -hf -b 1024000 -o - | tee -a matching_baud_rate.h264 | ffmpeg -i pipe:0 -vcodec copy -acodec copy http://localhost:8090/feed1.ffm
