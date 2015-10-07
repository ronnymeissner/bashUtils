#!/bin/sh
#
#
print_error() {
	echo "`tput smul`$BOLD$RED$1${DEFAULT}"
}
# create a directory if possible
createDir()
{
if [ ! -d $1 ]
then
/bin/mkdir -p $1 >/dev/null 2>&1 && echo "Directory $1 created." ||  print_red "Error: Failed to create $1 directory."
else
  print_error "Error: $1 directory exists!"
fi
}
