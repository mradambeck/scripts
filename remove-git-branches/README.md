# REMOVE ALL YOUR GIT BRANCHES
Ok, so I suck at remembering to delete all my git branches, and I'll end up with hundreds of them that I no longer need. This keeps develop, qa, and master (which are the only branches I need long-term), but removes everything else.

## Instructions
- Update `/git-remove-all-branches.sh` to contain whatever branches you do not want to erase
- Copy `git-remove-all-branches.sh` to `/usr/local/bin`
- In terminal type `chmod u+x git-remove-all-branches.sh`
- `cd` to your project folder, and enter `git-remove-all-branches.sh`
- *BE CAREFUL*
