#!/bin/bash
#
# Simple helper to install my dot files, when I am setting up new machines and vms.
#
# @sgwilbur
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
skip_files="README install.sh .gitignore"

for cur_file in `ls ${cwd}`;
do
  link_source=${cwd}/${cur_file}
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
# echo "Setting up local vim environment"
# mkdir -p ~/.vim/autoload ~/.vim/bundle

# if [ ! -e ~/.vim/autoload/pathogen.vim ]
# then
#   echo "Installing pathogen to ~/.vim/autoload/pathogen.vim"
#  # https://github.com/tpope/vim-pathogen/
#   curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# fi

# # Plugins
# # requires bash v4 to support associative arrays so some tom-foolery may
# # be required on OS X 10.10 at the time of writing this.
# vim_bundle_dir=~/.vim/bundle

# declare -A plugins

# plugins['nerdtree']='https://github.com/scrooloose/nerdtree.git'
# plugins['vim-nerdtree-tabs']='https://github.com/jistr/vim-nerdtree-tabs.git'
# plugins['vim-ansible-yaml']='https://github.com/chase/vim-ansible-yaml.git'

# for plugin_name in "${!plugins[@]}"
# do
#   plugin_dest="${vim_bundle_dir}/${plugin_name}"
#   plugin_git_url="${plugins[${plugin_name}]}"

#   if [ ! -d "${plugin_dest}" ]
#   then
#     echo "Installing ${plugin_name}"
#     echo "Calling  git clone '${plugin_git_url}' '${plugin_dest}'"

#     git clone "${plugin_git_url}" "${plugin_dest}"
#   else
#     echo "Checking ${plugin_name} for updates"
#     cd ${plugin_dest} && git pull origin master
#   fi

# done
