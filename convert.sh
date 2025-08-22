#!/bin/bash
#ffmpeg -f image2 -framerate 20 -i jpgs/final.wt-hi.%5d.jpg -vcodec libx264 -pix_fmt yuv420p wt-hi.mp4 &&
#ffmpeg -f image2 -framerate 20 -i jpgs/final.nless-hi.%5d.jpg -vcodec libx264 -pix_fmt yuv420p nless-hi.mp4
# recommended settings, but the video quality is not as good
#ffmpeg -f image2 -framerate 20 -i jpgs/final.wt-hi.%5d.jpg -vcodec libx264 -pix_fmt yuv420p -g 40 -b:v 3000k -bufsize 6000k test_hi2.mp4

#DIR=/ix/lchong/dty7/mov
DIR=d1d2_236
NAME=$1

#ffmpeg -f image2 -framerate 20 -i $DIR/final.${NAME}.%5d.jpg -vcodec libx264 -pix_fmt yuv420p ${NAME}.mp4
ffmpeg -f image2 -framerate 25 -i $DIR/final.${NAME}.%5d.jpg -vcodec libx264 -pix_fmt yuv420p ${NAME}.mp4
