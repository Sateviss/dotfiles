#! /bin/sh

if mkdir ~/Pictures/Wallpapers 2> /dev/null; then
    echo "Created $(realpath ~)/Pictures/Wallpapers"
else
    mkdir ~/Pictures 2> /dev/null
    $(mkdir ~/Pictures/Wallpapers 2> /dev/null) && echo "Created $(realpath ~)/Pictures/Wallpapers"
fi

while read p; do
    name=$(echo $p | awk '{print $1}')
    url=$(echo $p | awk '{print $2}')
    echo "Downloading $(tput bold)$name$(tput sgr0) from $(tput bold)$url$(tput sgr0)"
    curl -L -# $url -o ~/Pictures/Wallpapers/$name
done < wallpaper_list