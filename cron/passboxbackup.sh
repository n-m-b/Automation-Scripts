#!/bin/bash
DATE="$(date "+%j")"
scp /Users/casper/Desktop/Scripts/pass/passbox.gpg <sshbox>:/jaws/passbox/passbox.gpg."${DATE}"
