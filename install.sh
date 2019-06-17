#! /bin/sh

# SCRIPT=$(readlink -f "$0")
# SCRIPTPATH=$(dirname "$SCRIPT")

# if [[ "$*" == *-n* ]]
# then]
#     export CONFIG_DIR=$SCRIPTPATH >> ~/.profile
# fi

echo "Stowing modules from $(tput bold)module_list$(tput sgr0)..."

while read module; do
    dir=$(echo $module | awk '{print $1}')
    mod=$(echo $module | awk '{print $2}')
    stow --target=$dir $mod && echo "Stowed $(tput bold)$mod$(tput sgr0) to $(tput bold)$dir$(tput sgr0)"
done < module_list

echo "Modules stowed!"

# grep -qxF 'export PATH=$PATH:~/.bin' ~/.profile || { echo -e '\nexport PATH=$PATH:~/.bin' >> ~/.profile; echo "Added .bin to PATH"; }
