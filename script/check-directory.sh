#!/bin/bash
git log master..head --pretty="format:" --dirstat | \
while read percent directory
do
  if [[ $percent = "100.0%" ]]; then
    echo "yup, in correct directory"
  else
    echo "nope, files found not in correct directory"
    exit -1
  fi
done
