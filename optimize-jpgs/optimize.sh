#!/bin/bash
# optimize.sh MYJPEGNAME.jpg
FILE=$1
if [ ${FILE: -4} == ".jpg" ]
then
  djpeg -pnm < $1 > ${FILE%%.*}.ppm
  cjpeg -scans /usr/local/bin/scanscript.txt < ${FILE%%.*}.ppm > ${FILE%%.*}-optimized.jpg
  rm ${FILE%%.*}.ppm
  echo ${FILE%%.*}"-optimized.jpg has been created."
else
  echo "This script only optimizes .jpg files. "${FILE}" is not a jpg."
fi
