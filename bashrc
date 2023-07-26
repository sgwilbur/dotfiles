
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

source ${HOME}/.shrc
