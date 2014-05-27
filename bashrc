# 
platform=`uname -s`

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [[ ${platform} == 'Darwin' ]]; then
	echo "Sourcing Mac bashisms..."
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

export HOMEBREW_GITHUB_API_TOKEN="4e1820f73a65add96e892e8156bcb93f0431deb0"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/Applications/IBM/RTC-4.0.5-scmtools:$PATH"
