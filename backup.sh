#!/bin/bash
DATE="$(date "+%j")"
scp /Users/casper/Desktop/Scripts/safe/pwd.sh.safe root@71.229.52.41:/jaws/pwd/pwd.sh.safe."${DATE}"
