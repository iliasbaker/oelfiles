# oelfiles

### before you do anything:
```sh
sudo apt-get update
```

### bitwarden:
```sh
sudo snap install bitwarden
```

### anki:
* download it [here](https://apps.ankiweb.net/)
```
tar xjf ~/Downloads/anki-2.1.35-linux-amd64.tar.bz2
cd anki-2.1.35-linux-amd64
sudo apt-get install make
sudo apt-get install libxcb-xinerama0
sudo make install
```

#### add-ons:
essentials:
```
923360400 594329229 1988760596 817108664 266436365 323586997 516643804
```
ankimote and anki zoom:
```
538879081 149004221
```
review heatmap:
* [click here](https://github.com/Glutanimate/review-heatmap)


### nextcloud:
```sh
sudo apt-get install nextcloud-desktop
```

### atom:
* download it [here](https://atom.io/)

### codelite:
```sh
sudo apt-get install g++ codelite cmake
```

### spotify + spicetify
```sh
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
```
make `spicetify` command work:
* add an alias:
```sh
sudo gedit ~/.bash_aliases
```
add the following:
```
alias spicetify='spicetify-cli/spicetify'
```

### custom keyboard layouts

