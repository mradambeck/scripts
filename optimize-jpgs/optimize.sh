#!/bin/bash
# optimize MYJPEGNAME.jpg
FILE=$1
djpeg -pnm < $1 > ${FILE%%.*}.ppm
cjpeg -scans /usr/local/bin/scanscript.txt < ${FILE%%.*}.ppm > ${FILE%%.*}-optimized.jpg
rm ${FILE%%.*}.ppm
echo ${FILE%%.*}"-optimized.jpg has been created."
