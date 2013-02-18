#!/bin/sh
#
# Simple helper to install my dot files, when I am setting up new machines and vms.
#
# @sgwilbur

skip_files="README install.sh"


for cur_file in *;
do
  link_target=~/.${cur_file}

  echo "Working on link: ${link_target}"

  if [[ "${skip_files}" =~ "${cur_file}" ]] 
  then
#    echo "Matched a skip file [${cur_file}] skipping..."
    continue
  fi


  if [ -x ${link_target} ]
  then
    echo "Link of file already exists!"
    
  else
    ln -sf ${cur_file} ${link_target}
  fi

  echo $i
done
