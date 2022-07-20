echo "################################################################"
echo "#### Osu on debian linux install script, made by CherryYeti ####"
echo "################################################################"
sudo apt update && sudo apt upgrade && sudo apt install git curl build-essential zstd
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
sudo apt update
sudo apt install --install-recommends winehq-staging
sudo apt install winetricks
git clone https://gitlab.com/osu-wine/osu-wine
cd osu-wine
sudo ./install.sh
osu-wine
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xgJIe18ccBx6yjPcmBxDbTnS1XxwrAcc' -O wine-osu-7.0-x86_64.pkg.tar.zst
tar -xf wine-osu-7.0-x86_64.pkg.tar.zst
sudo cp -r ./opt/wine-osu/ /opt
sudo cp ./osu-wine.conf /etc/osu-wine.conf
echo "################################################################"
echo "##### The install has been completed. Enjoy your suffering #####"
echo "################################################################"
