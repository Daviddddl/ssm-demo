for (( i=51,j=17; i<=73; i++,j++ ))
do
  echo $i $j
  #head -c 100 _$i.json 
  mv _$i.json _$j.json
done
