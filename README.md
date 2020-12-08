# oelfiles

## before you do anything:
```sh
sudo apt-get update
```

## system files:

### custom keyboard layouts

```sh
cd /usr/share/X11/xkb/symbols
sudo cp -r gr grBACKUP
sudo cp -r ru ruBACKUP
```

#### modifying keyboards
```sh
sudo gedit /usr/share/X11/xkb/symbols/ru
```
replace the entire file with [this](https://hastebin.com/zaromemexi.properties)
```sh
sudo gedit /usr/share/X11/xkb/symbols/gr
```
replace the entire file with [this](https://hastebin.com/wezifufexa.properties)

#### modifying compose file:
```sh
sudo gedit ~/.XCompose
```
add [this](https://hastebin.com/averadetub.xml)

then restart your computer (i dont think there is any other way to update the .XCompose file)

### customising grub font size:
```sh
sudo grub-mkfont --size=36 -o /boot/grub/DejaVuSansMono.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf
sudo gedit /etc/default/grub
```
insert the following line in `etc/default/grub`:
```
GRUB_FONT=/boot/grub/DejaVuSansMono.pf2
```
rebuild grub configuration file:
```sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
reboot and the font should be readable!

### bitwarden:
```sh
sudo snap install bitwarden
```

### anki:
* download it [here](https://apps.ankiweb.net/)
```
tar xjf ~/Downloads/anki-2.1.35-linux-amd64.tar.bz2
cd anki-2.1.35-linux-amd64
sudo apt-get install make libxcb-xinerama0 mpv lame
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
#### no ugly vertical line:
* Preferences -> Packages -> wrap-guide : click on disable
#### install packages:

### codelite:
```sh
sudo apt-get install g++ codelite cmake
```
* change keyboard shortcut for "Build and Run" to `CTRL-J`

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

#### make commands work:
* add an alias:
```sh
sudo gedit ~/.bash_aliases
```
add the following:
```
alias spicetify='spicetify-cli/spicetify'
```

#### add themes
download from [here](https://github.com/morpheusthewhite/spicetify-themes)

extract all folders to `spicetify-cli/Themes`

my themes:
* [here](/dark-teal)

### more stuff to install:
```sh
sudo apt-get install gimp deluge
```

### learning with texts:
* download [here](https://sourceforge.net/projects/learning-with-texts/files/learning_with_texts_2_0_1_complete.zip/download)
```sh
sudo apt-get install apache2 libapache2-mod-php php php-mbstring php-mysql mysql-server
```
set mysql root password:
```sh
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'abcxyz';
FLUSH privileges;
QUIT;
```
unzip and install lwt zip:
```
unzip ~/Downloads/learning_with_texts_2_0_1_complete.zip -d ~/Downloads/lwt_step
unzip ~/Downloads/lwt_step/lwt_v_2_0_1.zip -d ~/Downloads/lwt
rm ~/Downloads/learning_with_texts_2_0_1_complete.zip
rm -r ~/Downloads/lwt_step
cp ~/Downloads/lwt/connect_xampp.inc.php ~/Downloads/lwt/connect.inc.php
gedit ~/Downloads/lwt/connect.inc.php
```
change `$passwd = "";` to `$passwd = "abcxyz";`
```sh
sudo rm /var/www/html/index.html
sudo mv ~/Downloads/lwt /var/www/html
sudo chmod -R a+rw /var/www/html/lwt
sudo service apache2 restart
sudo service mysql restart
xdg-open http://localhost/lwt
```
