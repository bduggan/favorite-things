#!/bin/sh

clear

exec 3<&0

cat $1 |
  while read p; do
    echo $p
    [ "$p" == "--" ] && read -u 3 && clear
  done

