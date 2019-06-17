#! /bin/sh

echo "$(tput bold)Un$(tput sgr0)stowing modules from module_list..."

while read module; do
    dir=$(echo $module | awk '{print $1}')
    mod=$(echo $module | awk '{print $2}')
    stow -D --target=$dir $mod && echo "$(tput bold)Un$(tput sgr0)stowed $(tput bold)$mod$(tput sgr0) to $(tput bold)$dir$(tput sgr0)"
done < module_list


echo "Modules $(tput bold)un$(tput sgr0)stowed!"