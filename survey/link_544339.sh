#!/usr/bin/env bash

input_date=$1
if [ x${input_date} == x ]; then
  input_date=$(date -d 'yesterday' +%Y%m%d)
fi

normalized_date=$(echo $input_date|sed -r -e 's/[^0-9]//g')

echo $normalized_date