#!/bin/sh
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
