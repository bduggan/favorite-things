#!/bin/sh

clear

exec 3<&0

cat favorite.txt |
  while read p; do
    echo $p
    [ "$p" == "--" ] && read -u 3 && clear
  done

