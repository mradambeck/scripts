# Progressive JPG encoding
Using LibJpeg, this takes a jpg, encodes it into a different format, then re-encodes it into a progressive jpg. Not only does it load progressively, it also is generally smaller.

## Instructions

- In terminal, you need to `brew install libjpeg`
- Copy scanscript.txt and optimize.sh to /usr/local/bin
- in terminal, type `chmod u+x optimize.sh`

at that point you can run this in any folder by calling `optimize.sh YOURFILENAME.jpg`

## Inspiration

http://cloudinary.com/blog/progressive_jpegs_and_green_martians
