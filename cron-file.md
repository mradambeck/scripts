For help: http://www.techradar.com/how-to/computing/apple/terminal-101-creating-cron-jobs-1305651

```
15  10  *  *  * bash ~/scripts/clear-screenshots/clear-screenshots.sh
15  5 * * * bash ~/scripts/clear-temp-folder/clear-temp.sh
0 5 * * 1-5 bash ~/scripts/bart-delays/bart-delays.sh
```
