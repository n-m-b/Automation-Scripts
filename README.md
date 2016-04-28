# automation-scripts
> Scripts I use to make my life in the CLI much easier and efficent.

## Password Management
-	[pwd.sh](https://github.com/drduh/pwd.sh) - My username and password information handler.
-	[wifi-password](https://github.com/rauchg/wifi-password) - My "I'm too lazy to get the actual password for people" handler.
- 	[passbox](https://github.com/RobBollons/passbox) - My other secure information handler.

### Prerequisites for Password Management
---
#### Installing GnuPG MacOSX
If you don't already have it, install [Homebrew](http://brew.sh/).
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Once that is installed, install [GnuPG](https://www.gnupg.org/)
```
brew install gnupg
```
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

