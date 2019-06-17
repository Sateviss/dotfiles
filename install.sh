#! /bin/sh

# SCRIPT=$(readlink -f "$0")
# SCRIPTPATH=$(dirname "$SCRIPT")

# if [[ "$*" == *-n* ]]
# then]
#     export CONFIG_DIR=$SCRIPTPATH >> ~/.profile
# fi

echo "Stowing modules from module_list..."

for module in $(cat module_list); do
    stow $module && echo "Stowed $(tput bold)$module$(tput sgr0)"
done

echo "Modules stowed!"

# grep -qxF 'export PATH=$PATH:~/.bin' ~/.profile || { echo -e '\nexport PATH=$PATH:~/.bin' >> ~/.profile; echo "Added .bin to PATH"; }
