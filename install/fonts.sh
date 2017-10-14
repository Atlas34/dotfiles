#!/bin/bash

# Folders
tmp_folder="/tmp/fonts"
powerline_fonts_dir="$tmp_folder/fonts-master"

# Variables
ToolsInstalled="Yes"

function die ()
{
   echo "${@}"
   exit 1
}

function toolExists()
{
   type $1 > /dev/null 2>&1 ||  { echo >&2 "$1 needs to be installed before running this script." ; ToolsInstalled="No" ; }
}
cat <<EOF

------------------------------
 Powerline Programming Fonts!
------------------------------

EOF

# Check if the tools to get the fonts are present
toolExists grep
toolExists wget
toolExists unzip

if [ $ToolsInstalled == "No" ]
then
    exit -1
fi

# Get font from git repo in /tmp folder
echo "Retrieving fonts from github..."
mkdir -p $tmp_folder

cd $tmp_folder
echo "Retrieving fonts from github..."
wget -c https://github.com/powerline/fonts/archive/master.zip

# unzip fonts
unzip master.zip

find_command="find \"$powerline_fonts_dir\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

if [[ `uname` == 'Darwin' ]]
then
    # MacOS
    font_dir="$HOME/Library/Fonts"
else
    # Linux
    font_dir="$HOME/.local/share/fonts"
    mkdir -p $font_dir || die "Could not make $font_dir"
fi

# Copy all fonts to user fonts directory
echo "Copying fonts..."
cd $powerline_fonts_dir
eval $find_command | xargs -0 -I % cp -f "%" "$font_dir/"

# Clean temp files
echo "Cleaning temp files..."
cd $font_dir

if [ -n "$tmp_folder" ]
then
    rm -rf $tmp_folder
fi

# Reset font cache on Linux
if command -v fc-cache @>/dev/null
then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f $font_dir
fi

echo "All Powerline fonts installed to $font_dir"
