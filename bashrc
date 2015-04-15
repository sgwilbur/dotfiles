# 
platform=`uname -s`

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [[ ${platform} == 'Darwin' ]]; then
#	echo "Sourcing Mac bashisms..."
       . ~/.bashrc_mac
fi

# Source local definitions
if [ -f ~/.bashrc_local ]; then
        . ~/.bashrc_local
fi

# http://alias.sh/users/sgwilbur
ALIAS_USERID=2102
alias ualias='wget -q -O - "$@" https://alias.sh/user/${ALIAS_USERID}/alias >> ~/.bash_aliases'

# Source local aliases definitions
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

# Turn off command not found on Ubuntu
unset command_not_found_handle

export HOMEBREW_GITHUB_API_TOKEN="3dc3842eed765b631463f95d998bf918fdc8fb51"

# Homebrew installs



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
