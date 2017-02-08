For help: http://www.techradar.com/how-to/computing/apple/terminal-101-creating-cron-jobs-1305651

```
# For bart-delays.sh:
TWILIO_ID="XXXXXXXXXX"
TWILIO_SECRET="XXXXXXXXXX"
TWILIO_NUMBER="+1##########"
MY_NUMBER="+1##########"

15      10      *       *       *       bash ~/scripts/clear-screenshots/clear-screenshots.sh >>~/scripts/clear-screenshots/stdout.log 2>>~/scripts/clear-screenshots/stderr.log
20      17       *       *       *       bash ~/scripts/clear-temp-folder/clear-temp.sh >>~/scripts/clear-temp-folder/stdout.log 2>>~/scripts/clear-temp-folder/stderr.log
15     17       *       *       1-5       bash ~/scripts/bart-delays/bart-delays.sh >>~/scripts/bart-delays/stdout.log 2>>~/scripts/bart-delays/stderr.log
```
Note - since the logs are set to append instead of replace, you need to create the corresponding stdout.log and stderr.log files first. To have them overwrite the old log, simply change the `>>` to a `>`
