#! /bin/sh
if [[ "$*" == *-n* ]]
then
    export CONFIG_DIR=$(pwd) >> ~/.profile
fi

mkdir -p ~/.config/i3 && ln -fs $(pwd)/i3.conf ~/.config/i3/config
mkdir -p ~/.config/i3blocks && ln -fs $(pwd)/i3blocks.conf ~/.config/i3blocks/config
mkdir -p ~/.config/rofi && ln -fs $(pwd)/rofi.conf ~/.config/rofi/config
mkdir -p ~/.config/polybar && ln -fs $(pwd)/polybar.conf ~/.config/polybar/config
