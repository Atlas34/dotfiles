#!/bin/bash
filename=~/Pictures/wallpaper.jpg
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
if [ ${bUpdateWallpaper} == true ]
then
	echo "TEs"
    urlpath=$( \
    curl "https://www.bing.com/HPImageArchive.aspx?format=rss&idx=0&n=1&mkt=en-US" \
        | xmllint --xpath "/rss/channel/item/link/text()" - \
        | sed 's/1366x768/1920x1080/g' \
    )
    curl "https://www.bing.com$urlpath" -o ${filename}
fi
feh --bg-scale ${filename}
