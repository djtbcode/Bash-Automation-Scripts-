#!/bin/bash
echo
if [ "$1" != "" ]
then cd "$1"
fi

pwd

if [ `ls -F -1 | grep "/" | wc -l` = 0 ]
then echo "     -> no sub-directories"
fi
# The provided conditional statement uses `ls` lists files and directories with indicators one line at a time. `grep` is then used to find the `/` indicator which implies a directory. If the line count calculated by `wc -l` is `0`, then no subdirectories exist.

ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
echo

