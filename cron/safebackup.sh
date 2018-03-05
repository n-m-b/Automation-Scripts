#!/bin/bash
DATE="$(date "+%j")"
scp /Users/casper/Desktop/Scripts/safe/pwd.sh.safe <sshbox>:/jaws/pwd/pwd.sh.safe."${DATE}"
