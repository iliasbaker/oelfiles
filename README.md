# oelfiles

## essential

### bitwarden
[download](https://bitwarden.com/download/)

### nextcloud
privacy-oriented and free cloud server

[download](https://nextcloud.com/)

## productivity

### anki

#### card themes:
* basic: [css](https://pastebin.com/96AX3vZx), [front and back](https://pastebin.com/SbaCurP1)
* cloze: [css](https://pastebin.com/uBuHcUza), [front and back](https://pastebin.com/h1vNa37y)
  
#### add-ons:
* [review heatmap](https://github.com/Glutanimate/review-heatmap)
* [true retention by card maturity](https://ankiweb.net/shared/info/923360400) (923360400)
* [heirarchical tags 2](https://ankiweb.net/shared/info/594329229) (594329229)
* [customize sidebar](https://ankiweb.net/shared/info/1988760596) (1988760596)
* [anki simulator](https://ankiweb.net/shared/info/817108664) (817108664)
* [progress graphs and stats for learned and matured cards](https://ankiweb.net/shared/info/266436365) (266436365)
* [rememorize](https://ankiweb.net/shared/info/323586997) (323586997)
optional:
* [ankimote](https://ankiweb.net/shared/info/149004221) (149004221)
* [anki zoom](https://ankiweb.net/shared/info/538879081) (538879081)

### boost note
markdown-based cross-platform open-source free notes app

[download](https://boostnote.io/)

you can save it in your Nextcloud folder and it will sync over

### atom
[download](https://atom.io/)

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
spicetify -h
```

if that doesn't work, try:
```sh
spicetify-cli/spicetify -h
```
