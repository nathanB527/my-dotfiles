#!/bin/bash
notify-send "Background selector running"
bg_string=""
wallpapers_location=~/wallpapers/m-26/

while IFS= read -r -d '' filepath; do
    name="${filepath##*/}"
    bg_string+="${name}\n"
done < <(find $wallpapers_location -type f -print0)



choice=$(echo -e $bg_string | wofi --show=dmenu -p "Backgrounds:" )
swww img $wallpapers_location/$choice -t any


