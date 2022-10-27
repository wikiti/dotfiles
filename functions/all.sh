#!/bin/sh

for file in functions/*.sh
do
  [ "$file" != "functions/all.sh" ] && . $file
done
