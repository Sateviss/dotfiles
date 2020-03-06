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
# export PATH="~/.bin:$PATH"
# export PATH="~/Scripts:$PATH"
# export PATH="~/dotnet:$PATH"
export PATH="~/.gem/ruby/2.6.0/bin:$PATH"
source ~/.shortcuts

mcat() {
  datestamp=$(date +%s)
  pandoc -s -o /tmp/$datestamp.pdf $1
  zathura /tmp/$datestamp.pdf
  rm /tmp/$datestamp.pdf
}

alias dlogin="docker login $DELTIX_PROGET_URL --username $DELTIX_PROGET_USER --password $DELTIX_PROGET_PASS"
alias dlogout="docker logout $DELTIX_PROGET_URL"
HISTSIZE=10000
HISTFILESIZE=10M

source /home/ypisarchyk/dotfiles/old_bashrc
