echo "################################################################"
echo "##### Osu on arch linux install script, made by CherryYeti #####"
echo "################################################################"
sudo pacman --noconfirm --needed -Syu git p7zip wget wine-staging winetricks
sudo pacman --needed --ask 4 -Sy giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox || error "Failed to install required packages"
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
