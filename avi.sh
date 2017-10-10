**uv4l_setup

#!/usr/bin/env sh

curl http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install uv4l uv4l-raspicam
sudo apt-get install uv4l-raspicam-extras
sudo apt-get install uv4l-server uv4l-uvc uv4l-xscreen uv4l-mjpegstream uv4l-dummy uv4l-raspidisp
sudo service uv4l_raspicam restart




**uv4l_config

#!/usr/bin/env sh

sudo uv4l -nopreview --auto-video_nr --driver raspicam --encoding mjpeg --width 214 --height 120 --framerate 30 --server-option '--port=40000' --rotation 180 --server-option '--max-queued-connections=30' --server-option '--max-streams=25' --server-option '--max-threads=29'






**uv4l_end

#!/usr/bin/env sh

sudo pkill uv4l




**/etc/apt/sources.list


**/etc/uv4l/uv4l-raspicam.conf