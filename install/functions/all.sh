#!/bin/sh

for file in install/functions/*.sh
do
  [ "$file" != "install/functions/all.sh" ] && . $file
done
