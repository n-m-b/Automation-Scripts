#!/bin/bash
echo -n "Drag File Here: "
	read file
gpg --decrypt $file
