# Begin /usr/share/defaults/etc/profile

if [ -d /usr/share/defaults/etc/profile.d ] ; then
    for script in /usr/share/defaults/etc/profile.d/*.sh
    do
      source $script
    done
    unset script
fi

if [ -d /etc/profile.d ] ; then
    for script in /etc/profile.d/*.sh
    do
      source $script
    done
    unset script
fi

# End /usr/share/defaults/etc/profile

# PS1="\[\e[0;37m\]\u@\h \w\$ \[\e[m\] "
PS1="\[\033[38;5;8m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;201m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \w\\$ \[$(tput sgr0)\]"
export PATH="~/.bin:$PATH"
export PATH="~/dotnet:$PATH"
export COLOR=$(echo colour$((0x$(echo $(whoami)@$(hostname) | shasum | cut -c1-2))))

alias ll="ls -lAh"
alias gi="cd /run/media/$USER"
alias untar="tar -xvf"
HISTSIZE=
HISTFILESIZE=
