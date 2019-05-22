#!/bin/bash

cd /usr/local/src/tomcat/webapps/ssm-demo/data

num=9
total=48

declare -A map=()

echo ${#map[@]}
echo ${num}

while [ ${#map[@]} -lt ${num} ];
do
  i=$(( RANDOM % $total + 1))
  #echo $i
  map[$i]=$i
  #echo ${!map[@]}
done

i=1
for key in ${!map[@]}
do
  rm -f $i.json
  cp _$key.json $i.json
  i=$((i+1))
done
