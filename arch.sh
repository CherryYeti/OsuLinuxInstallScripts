echo "################################################################"
echo "##### Osu on arch linux install script, made by CherryYeti #####"
echo "################################################################"
sudo pacman --noconfirm --needed -Syu git p7zip wget wine-staging winetricks
sudo pacman --needed --ask 4 -Sy - < pkglist.txt || error "Failed to install required packages"
git clone https://gitlab.com/osu-wine/osu-wine
cd osu-wine
sudo ./install.sh
osu-wine
cd ..
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xgJIe18ccBx6yjPcmBxDbTnS1XxwrAcc' -O wine-osu-7.0-x86_64.pkg.tar.zst
tar -xf wine-osu-7.0-x86_64.pkg.tar.zst
sudo cp -r ./opt/wine-osu/ /opt
sudo cp ./osu-wine.conf /etc/osu-wine.conf
echo "################################################################"
echo "##### The install has been completed. Enjoy your suffering #####"
echo "################################################################"