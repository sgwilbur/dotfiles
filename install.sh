#!/bin/bash
#
# Simple helper to install my dot files, when I am setting up new machines and vms.
#
# @sgwilbur

skip_files="README install.sh"


for cur_file in *;
do
  link_source=`pwd`/${cur_file}
  link_target=~/.${cur_file}

  echo "Working on: ${cur_file}"

  if [[ "${skip_files}" =~ "${cur_file}" ]] 
  then
#    echo "Matched a skip file [${cur_file}] skipping..."
    continue
  fi

  echo "Going to create link in ~ to: ${link_target}"

  if [ -e ${link_target} ]
  then
    echo "Link of file already exists!"
    rm ${link_target}
    echo "Removed old link."
#  else
#    ln -sf ${cur_file} ${link_target}
  fi
    ln -sf ${link_source} ${link_target}

  echo $i
done


# setup vim
echo "Setting up local vim environment"
mkdir -p ~/.vim/autoload ~/.vim/bundle 

if [ ! -e ~/.vim/autoload/pathogen.vim ]
then
  echo "Installing pathogen to ~/.vim/autoload/pathogen.vim"
 # https://github.com/tpope/vim-pathogen/
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
fi

# Plugins
if [ ! -e ~/.vim/bundle/nerdtree ]
then
  echo "Installing NERDTree"
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
else
  echo "Checking NERDTree for updates"
  cd ~/.vim/bundle/nerdtree && git pull origin master
fi


