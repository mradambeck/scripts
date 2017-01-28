# BART delay texts

This is setup in CRON to check every day at 5pm is there have been any reports on the SFBARTalert Twitter account in the last two hours. Sends me a text to let me know whether I should expect delays on my commute home.

## Installation
- First you need to get T, a command-line Twitter tool: https://github.com/sferik/t, in bash, run `gem install t`, and set up your account
- You'll need to sign up for a Twilio account and set environment variables for your TWILIO_ID and TWILIO_SECRET
- Set a cron job (see my cron-file.txt) to run it at the desired interval
