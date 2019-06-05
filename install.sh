#! /bin/sh

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

if [[ "$*" == *-n* ]]
then
    export CONFIG_DIR=$SCRIPTPATH >> ~/.profile
fi

mkdir -p ~/.config/i3 && ln -fs $SCRIPTPATH/i3.conf ~/.config/i3/config
mkdir -p ~/.config/i3blocks && ln -fs $SCRIPTPATH/i3blocks.conf ~/.config/i3blocks/config
mkdir -p ~/.config/rofi && ln -fs $SCRIPTPATH/rofi.conf ~/.config/rofi/config
mkdir -p ~/.config/polybar && ln -fs $SCRIPTPATH/polybar.conf ~/.config/polybar/config
mkdir -p ~/.config/conky && ln -fs $SCRIPTPATH/conky.conf ~/.config/conky/conky.conf
mkdir -p ~/.config/compton && ln -fs $SCRIPTPATH/compton.conf ~/.config/compton/compton.conf
