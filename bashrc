
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bashrc_local ]; then
        . ~/.bashrc_local
fi


# http://alias.sh/users/sgwilbur
ALIAS_USERID=2102
alias ualias='wget -q -O - "$@" https://alias.sh/user/${ALIAS_USERID}/alias >> ~/.bash_aliases'




