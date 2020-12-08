# Update everything first
sudo apt-get update

# Bitwarden
sudo snap install bitwarden

# Custom keyboards
sudo apt-get install curl
cd ~/Downloads
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/ru
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/gr
sudo cp -r /usr/share/X11/xkb/symbols/gr /usr/share/X11/xkb/symbols/grBACKUP
sudo cp -r /usr/share/X11/xkb/symbols/ru /usr/share/X11/xkb/symbols/ruBACKUP
sudo cp ~/Downloads/gr /usr/share/X11/xkb/symbols/gr
sudo cp ~/Downloads/ru /usr/share/X11/xkb/symbols/ru

# Adding to XCompose file
touch ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ie> : \"э\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_IE> : \"Э\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ze> : \"ж\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ZE> : \"Ж\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_sha> : \"щ\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_SHA> : \"Щ\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_tse> : \"ч\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_TSE> : \"Ч\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_o> : \"ё\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_O> : \"Ё\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_u> : \"ю\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_U> : \"Ю\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_a> : \"я\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_A> : \"Я\"" >> ~/.XCompose

# Customising grub font size
cd
sudo grub-mkfont --size=36 -o /boot/grub/DejaVuSansMono.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf
echo "GRUB_FONT=/boot/grub/DejaVuSansMono.pf2" >> /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Synaptic package manager
sudo apt-get install synaptic

# Nextcloud
# sudo apt-get install nextcloud-desktop

# Note-taking apps

# Boost Note
# cd ~/Downloads
# wget https://github.com/BoostIO/BoostNote.next/releases/latest/download/boost-note-linux.deb
# sudo dpkg -i ./boost-note-linux.deb

# Simplenote
# sudo snap install simplenote

# Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Todoist
sudo snap install todoist

# Text editors

# Atom
sudo apt-get install atom
apm install open-in-browser # Installing package(s)
apm disable wrap-guide # That fucking white line

# Brackets
# sudo snap install brackets --classic

# Sublime text
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update
# sudo apt-get install sublime-text

# Coding stuff: atom and codelite
sudo apt-get install g++ codelite cmake

# Spotify and spicetify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
touch ~/.bash_aliases
echo "alias spicetify='spicetify-cli/spicetify'" >> ~/.bash_aliases

# Getting spicetify themes
cd ~/Downloads
wget https://github.com/morpheusthewhite/spicetify-themes/archive/master.zip
unzip master.zip
cp -R spicetify-themes-master Themes
cp -R Themes ~/spicetify-cli
sed -i -e 's/SpicetifyDefault/YoutubeDark/g' ~/.config/spicetify/config.ini

# Installing Anki
cd ~/Downloads
wget https://github.com/ankitects/anki/releases/download/2.1.35/anki-2.1.35-linux-amd64.tar.bz2
tar xjf ~/Downloads/anki-2.1.35-linux-amd64.tar.bz2
cd anki-2.1.35-linux-amd64
sudo apt-get install make libxcb-xinerama0 mpv lame
sudo make install

# Gimp
cd
sudo apt-get install gimp

# Deluge (torrent client)
sudo apt-get install deluge

# Calibre
cd
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# Gparted
sudo apt-get install gparted

# LWT
sudo apt-get install apache2 libapache2-mod-php php php-mbstring php-mysql mysql-server wget
cd ~/Downloads
wget https://sourceforge.net/projects/learning-with-texts/files/learning_with_texts_2_0_1_complete.zip/download
unzip ~/Downloads/download -d ~/Downloads/lwt_step
unzip ~/Downloads/lwt_step/lwt_v_2_0_1.zip -d ~/Downloads/lwt
rm ~/Downloads/learning_with_texts_2_0_1_complete.zip
rm -r ~/Downloads/lwt_step
cp ~/Downloads/lwt/connect_xampp.inc.php ~/Downloads/lwt/connect.inc.php
sed -i -e 's/$passwd = ""/$passwd = "abcxyz"/g' ~/Downloads/lwt/connect.inc.php
sudo rm /var/www/html/index.html
sudo mv ~/Downloads/lwt /var/www/html
sudo chmod -R a+rw /var/www/html/lwt
mysql -u root -pabcxyz <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'abcxyz';
FLUSH privileges;
EOF
sudo service apache2 restart
sudo service mysql restart

# Gnome online accounts
echo "All done (almost)! Sign in, and restart your computer"
gnome-control-center online-accounts
