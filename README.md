# oelfiles

## essential

## productivity

### anki
card themes:
  - basic: [css](https://pastebin.com/96AX3vZx), [front and back](https://pastebin.com/SbaCurP1)
  - cloze: [css](https://pastebin.com/uBuHcUza), [front and back](https://pastebin.com/h1vNa37y)

### joplin
[page](https://joplinapp.org/)

```sh
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
```
this mode of installation is preferable as it also gives you a desktop icon

## entertainment

### spicetify-cli

downloading spotify-client:
```sh
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
```

setting read/write permissions for spotify
```sh
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
```

installing spicetify
```sh
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
```

allowing commands starting with "spicetify" to work (if you don't do this then it will be difficult to use spicetify commands in terminal
```sh
export SPICETIFY_INSTALL="/home/ilias/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
```

get list of commands
```sh
spicetify -h config
```
