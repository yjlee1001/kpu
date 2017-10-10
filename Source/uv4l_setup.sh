#!/usr/bin/env sh


curl http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get install uv4l uv4l-raspicam

sudo apt-get install uv4l-raspicam-extras

sudo apt-get install uv4l-server uv4l-uvc uv4l-xscreen uv4l-mjpegstream uv4l-dummy uv4l-raspidisp

sudo service uv4l_raspicam restart