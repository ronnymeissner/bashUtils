#!/bin/sh
# Author: Ronny Meißner
#

# create a directory if possible
createDir()
{
  if [ ! -d $1 ]
    then
    /bin/mkdir -p $1 >/dev/null 2>&1 && echo "Directory $1 created." ||  print_red "Error: Failed to create $1 directory."
  else
    print_info "Info: $1 directory exists!"
  fi
}
