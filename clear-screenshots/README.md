# clear-screenshots.sh

I have a folder setup that my screenshots dump into. I rarely need to reuse a screenshot after the initial sending of it, but that folder tends to get a lot of action pretty quickly, so this just erases it every morning.

### Instructions
- Setup your folder to dump screenshots into at ~/Screenshots
- In bash, type `defaults write com.apple.screencapture location ~/Screenshots` to tell your OS to start dumping screenshots there instead of the desktop (why the fuck they just have them dump to the desktop I'll never understand).
- Setup a cron job to run this script at the desired interval. (Checkout my cron-file.txt for an example)
