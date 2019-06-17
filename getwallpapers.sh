#! /bin/sh

mkdir ~/Pictures 2> /dev/null && mkdir ~/Pictures/Wallpapers && echo "Creted $(realpath ~)/Pictures/Wallpapers" 2> /dev/null

while read p; do
    name=$(echo $p | awk '{print $1}')
    url=$(echo $p | awk '{print $2}')
    echo "Downloading $(tput bold)$name$(tput sgr0) from $(tput bold)$url$(tput sgr0)"
    curl -# $url -o ~/Pictures/Wallpapers/$name
done < wallpaper_list