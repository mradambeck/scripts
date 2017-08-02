#!/bin/bash
# optimize-png-folder PATH/TO/FOLDER
FOLDER=$1
for i in ${FOLDER}/*.png; do
  zopflipng -y $i $i || break
done
