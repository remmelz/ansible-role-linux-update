#!/bin/bash

for ss in `snapper list \
  | awk -F'|' ' {print $2}' \
  | sort -n`; do

  [[ -n `echo ${ss} | grep '#'` ]]   && continue
  [[ -n `echo ${ss} | grep '^0$'` ]] && continue

  echo "deleting snapshot ${ss}..."
  snapper delete ${ss}

done

