#!/bin/bash
filename=~/Images/wallpaper.jpg
bUpdateWallpaper=true

if [ -f ${filename} ]
then
	date=`date +%Y-%m-%d`
	fileDate=`stat -c %x ${filename} | cut -d" " -f1`

	if [ ""${date} == ""${fileDate} ]
	then
		bUpdateWallpaper=false
	fi
fi
if [ bUpdateWallpaper == true ]
then
	wget "https://source.unsplash.com/featured/1920x1080/daily/?landscape" -O ${filename}
fi
feh --bg-scale ${filename}
