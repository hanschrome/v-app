# Dependencies in host

1. Install v4l2loopback https://archlinux.org/packages/community/any/v4l2loopback-dkms/
2. Enable it: modprobe v4l2loopback
3. Run: ffmpeg -f x11grab -r 15 -s 1929x1080 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video2

