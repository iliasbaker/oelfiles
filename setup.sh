# Update everything first
sudo apt-get update

# Bitwarden
sudo snap install bitwarden

# Custom keyboards
sudo apt-get install curl
cd ~/Downloads
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/ru
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/gr
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/am
sudo cp -r /usr/share/X11/xkb/symbols/gr /usr/share/X11/xkb/symbols/grBACKUP
sudo cp -r /usr/share/X11/xkb/symbols/ru /usr/share/X11/xkb/symbols/ruBACKUP
sudo cp -r /usr/share/X11/xkb/symbols/am /usr/share/X11/xkb/symbols/amBACKUP
sudo cp ~/Downloads/gr /usr/share/X11/xkb/symbols/gr
sudo cp ~/Downloads/ru /usr/share/X11/xkb/symbols/ru
sudo cp ~/Downloads/am /usr/share/X11/xkb/symbols/am

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
echo '<dead_acute> <Armenian_yech> : "է"' >> ~/.XCompose
echo '<dead_acute> <Armenian_YECH> : "Է"' >> ~/.XCompose
echo '<dead_acute> <Armenian_tyun> : "թ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_TYUN> : "Թ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_za> : "ժ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_ZA> : "Ժ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_gim> : "ղ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_GIM> : "Ղ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_tso> : "ծ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_TSO> : "Ծ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_ke> : "ք' >> ~/.XCompose
echo '<dead_acute> <Armenian_KE> : "Ք"' >> ~/.XCompose
echo '<dead_acute> <Armenian_pe> : "փ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_PE> : "Փ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_re> : "ռ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_RE> : "Ռ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_tche> : "ծ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_TCHE> : "Ծ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_vev> : "ւ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_VEV> : "Ւ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_vo> : "և"' >> ~/.XCompose
echo '<dead_acute> <Armenian_at> : "յ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_AT> : "Յ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_dza> : "ջ"' >> ~/.XCompose
echo '<dead_acute> <Armenian_DZA> : "Ջ"' >> ~/.XCompose

# Customising grub font size
cd
sudo grub-mkfont --size=36 -o /boot/grub/DejaVuSansMono.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf
echo "GRUB_FONT=/boot/grub/DejaVuSansMono.pf2" >> /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Synaptic package manager
sudo apt-get install synaptic

# Nextcloud
sudo apt-get install nextcloud-desktop

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

# Coding stuff
sudo apt-get install g++ codelite cmake
# sudo snap install pycharm-community --classic
# sudo apt-get install python3-distutils python3-apt

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

# My personal theme
cd ~/Downloads
mkdir dark-teal
cd dark-teal
wget https://raw.githubusercontent.com/iliasbaker/oelfiles/main/dark-teal/color.ini
wget https://raw.githubusercontent.com/iliasbaker/oelfiles/main/dark-teal/user.css
cd ~/Downloads
cp -R dark-teal ~/spicetify-cli/Themes

# Installing Anki
cd ~/Downloads
wget https://github.com/ankitects/anki/releases/download/2.1.35/anki-2.1.35-linux-amd64.tar.bz2
tar xjf ~/Downloads/anki-2.1.35-linux-amd64.tar.bz2
cd anki-2.1.35-linux-amd64
sudo apt-get install make libxcb-xinerama0 mpv lame
sudo make install

# Installing review heatmap
cd ~/Downloads
wget https://github.com/glutanimate/review-heatmap/releases/download/v1.0.0-beta.1/review-heatmap-v1.0.0-beta.1-anki21.ankiaddon
anki review-heatmap-v1.0.0-beta.1-anki21.ankiaddon

# Installing more add-ons
echo "Paste the following into Anki -> Add-ons -> Get Add-ons, then close Anki to continue"
echo "923360400 594329229 1988760596 817108664 266436365 323586997 516643804 538879081 149004221 291119185 1996266159 1046608507 874215009 374005964 41708974"
echo "Delete AnkiMote, ReMemorize, Leaderboard, Anki Zoom, Ankimote"

# Gimp
cd
sudo apt-get install gimp

# Deluge (torrent client)
sudo apt-get install deluge

# Calibre
cd
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
bash
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

# Dbeaver
# sudo snap install dbeaver-ce

# Gnome online accounts
echo "All done (almost)! Sign in, and restart your computer"
gnome-control-center online-accounts
