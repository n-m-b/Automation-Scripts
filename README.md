# automation-scripts
> Scripts I use to make my life in the CLI much easier and efficent.

## Prerequisites
### Installing GnuPG MacOSX
If you don't already have it, install [Homebrew](http://brew.sh/).
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Once that is installed, install [GnuPG](https://www.gnupg.org/)
```
brew install gnupg
```

## Password Management
-	[pwd.sh](https://github.com/drduh/pwd.sh) - My username and password information handler.
-	[wifi-password](https://github.com/rauchg/wifi-password) - My "I'm too lazy to get the actual password for people" handler.
- 	[passbox](https://github.com/RobBollons/passbox) - My other secure information handler.


### Password Management Installation
---
If you want the scripts.
```
git clone https://github.com/n-m-b/automation-scripts.git
```
Make sure to chmod each script so that you can actually use it.
```
(sudo) chmod u+x <script>
```
#### Alternatively
You can install [wifi-password](https://github.com/rauchg/wifi-password) with Brew.
```
brew install wifi-password
```
You can install [passbox](https://github.com/RobBollons/passbox) with Curl.
```
curl -L https://raw.githubusercontent.com/RobBollons/passbox/master/passbox > ./passbox && chmod +x ./passbox
```
### Password Management Usage
---
#### Using [pwd.sh](https://github.com/drduh/pwd.sh)
-	Run the script interactively using `cd pwd.sh && ./pwd.sh` or symlink to a folder in `$PATH` and run directly.
-	Type `w` to write a password.
-	Type `r` to read a password.
-	Type `d` to delete a password.
-	Create password with length of 30 characters for *gmail*:

    `./pwd.sh w gmail 30`
-	Read password for *user@github*:

    `./pwd.sh r user@github`

-	Delete password for *dropbox*:

    `./pwd.sh d dropbox`
	
-	Copy password for *github* to clipboard on OS X:

    `./pwd.sh r github | cut -f 1 -d ' ' | awk 'NR==3{print $1}' | pbcopy`
	
#### Using [wifi-password](https://github.com/rauchg/wifi-password)
-	To get the password for the WiFi you're currently logged onto:

	`wifi-password`
-	To get it for a specific SSID:

	`wifi-password <ssid>`
-	To put it straight in your clipboard for pasting elsewhere (OS X only):

	`wifi-password | pbcopy`
#### Using [passbox.sh](https://github.com/RobBollons/passbox)	
```
usage: passbox [action]

Passbox - command line password manager utility

ACTIONS
   add-field     <entry name>               Update an existing entry to add additional fields to
   delete        <entry name>               Remove an entry from the password database
   get           <entry name>               Get a particular password entry by it's name
   generate                                 Generate a new random password
   new                                      Prompt to create a new passbox entry
   remove-field  <entry name> <field name>  Update an existing entry to remove additional fields
   search        <search pattern>           Search the password database for a particular string, returns all matching entries
   update        <entry name>               Update an existing entry in the password database
```

## Cron
-	[brewupdate.sh](https://github.com/n-m-b/automation-scripts/blob/master/cron/brewupdate.sh) - Keeps me up to date with Homebrew.
-	[passboxbackup.sh](https://github.com/n-m-b/automation-scripts/blob/master/cron/passboxbackup.sh) - Backs up my passbox.gpg to my file server.
-	[safebackup.sh](https://github.com/n-m-b/automation-scripts/blob/master/cron/safebackup.sh) - Backs up my pwd.sh.safe to my file server.
### Cron Usage
---
- `crontab -e` to open vim so you can edit.
	- Press i to begin editing the file.
- `0 6 * * * /bin/bash /Path/to/brewupdate.sh` 
	- this updates brew everyday at 6 am.
- `0 21 * * * /bin/bash /Path/to/safebackup.sh` 
	- this backs up the pwd.sh.safe to a file server or to another folder on the computer.
- `0 21 * * * /bin/bash /Path/to/passboxbackup.sh` 
	- this backs up the passbox.gpg to a file server or to another folder on the computer.
- `CTRL+C`
	- to stop editing.
- `ZZ`
	- saves and installs the cron jobs (Make sure the Z's are capitalized).

## GPG
-	[gpgdecrypt.sh](https://github.com/n-m-b/automation-scripts/blob/master/gpg/gpgdecrypt.sh) - Allows quick decrypting of messages from other users.
-	[encryptedmes.sh](https://github.com/n-m-b/automation-scripts/blob/master/gpg/encryptedmes.sh) - Or encrypted message, allows me to use gpg quickly to send a message to someone who's key I have.
### GPG Usage
---
#### Using [gpgdecrypt.sh](https://github.com/n-m-b/automation-scripts/blob/master/gpg/gpgdecrypt.sh)
-	`cd /directory/of/gpgdecrypt.sh && ./gpgdecrypt.sh`
-	Drag the file into the terminal window or type in the path of the file to decrypt.
-	Enter password when prompted.
#### Using [encryptedmes.sh](https://github.com/n-m-b/automation-scripts/blob/master/gpg/encryptedmes.sh)
-	`cd /directory/of/encryptedmes.sh && ./encryptedmes.sh`
-	Enter the email of the recipient.
-	Enter the name of the output file.
-	Write your message. 
