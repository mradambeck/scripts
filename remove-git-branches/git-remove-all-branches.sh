#!/bin/bash
# Removes all the feature and bug branches, leaving develop, qa, and master
git branch | grep -v 'develop' | grep -v 'master' | grep -v 'qa' | xargs git branch -D
