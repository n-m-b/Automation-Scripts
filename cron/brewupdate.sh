#!/bin/bash
# Super Simple Brew Updater
/usr/local/bin/brew update --quiet
/usr/local/bin/brew upgrade --quiet
/usr/local/bin/brew cleanup --quiet
