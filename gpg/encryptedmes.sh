#!/bin/bash
echo -n "Enter Email of Recipient: "
	read email
echo -n "Output File Name: "
	read file
	if [[ -e $file.asc ]]; then
		echo "File Exists"
		exit 1
	else
		touch $file.asc
	fi
echo -n "Enter Message: "
	read message
echo $message | gpg -aer $email >> $file.asc 
