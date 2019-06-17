#! /bin/sh

echo "$(tput bold)Un$(tput sgr0)stowing modules from module_list..."

for module in $(cat module_list); do
    stow -D $module && echo "$(tput bold)Un$(tput sgr0)stowed $(tput bold)$module$(tput sgr0)"
done

echo "Modules $(tput bold)un$(tput sgr0)stowed!"