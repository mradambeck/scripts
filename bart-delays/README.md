# BART delay texts

This is setup in CRON to check every day at 5pm is there have been any reports on the SFBARTalert Twitter account in the last two hours. Sends me a text to let me know whether I should expect delays on my commute home.

## Installation
- First you need to get T, a command-line Twitter tool: https://github.com/sferik/t, in bash, run `gem install t`, and set up your account
- You'll need to sign up for a Twilio account and set environment variables for your $TWILIO_ID and $TWILIO_SECRET, as well as $TWILIO_NUMBER (your Twilio account phone number), and $MY_NUMBER (the number you'd like the text to go to). The manner in which you set environment variables can vary, I'm using ZSH and have them setup in my profile for that - BUT if running this via cron you also need to setup a cron variable (it runs in a different environment).
- Change the path to t to your path (note - if you find it via `which t`, you'll need to change /bin to /wrappers)
- Set a cron job (see my cron-file.md) to run it at the desired interval
