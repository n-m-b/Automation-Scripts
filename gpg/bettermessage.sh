#!/bin/bash
echo -n "Name of Message: "
	read messagen
	if [ ! -e $messagen.txt ]; then
		touch $messagen.txt
		clear
		echo -n "Would you like to make it a GPG message?[Y/n] "
			read gpgo
			if [ $gpgo == y ] || [ $gpgo == Y]; then
				rm $messagen.txt
				touch $messagen.asc
				echo -n "Enter Email of Recipient: "
					read email
				clear
				echo "Type Message"
				cat | gpg -aer $email > $messagen.asc
				clear
				echo "Done"
				exit 1
			else
				clear
				echo "Type Message"
				cat > $messagen.txt
				clear
				echo "Done"
				exit 1
			fi
	else
		echo "$messagen.txt already exists."
	fi
