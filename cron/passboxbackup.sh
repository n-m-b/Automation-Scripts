#!/bin/bash
DATE="$(date "+%j")"
scp /Users/casper/Desktop/Scripts/pass/passbox.gpg root@71.229.52.41:/jaws/passbox/passbox.gpg."${DATE}"
