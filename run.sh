clear
exec 3<&0
exec < favorite.txt

while read p; do
  echo $p
  [ "$p" == "--" ] && read -u 3 && clear
done

