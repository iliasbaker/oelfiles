# oelfiles

## essential

## productivity

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
