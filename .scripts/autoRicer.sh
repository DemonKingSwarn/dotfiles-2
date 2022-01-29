#!/bin/sh

# build essential
apt-get install build-essential -y

# apt-fast
add-apt-repository ppa:apt-fast/stable
apt-get update
apt-get -y install apt-fast

# brew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# i3wm
apt-fast install i3 -y

# i3gaps and required dependencies for i3gaps
apt-fast install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake -y

mkdir tmp
cd tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# auto rices i3
cd
git clone https://github.com/demonkingswarn/dotfiles-2.git
rm -rf .config/i3
mkdir .config/i3/
mv ~/dotfiles-2/.config/i3/* ~/.config/i3/
mv ~/dotfiles-2/Pictures/* ~/Pictures/
mkdir ~/.config/sxhkd
mv ~/dotfiles-2/.config/sxhkd/* ~/.config/sxhkd/
apt-fast install sxhkd
apt-fast install zsh
mkdir .config/zsh/
mv ~/dotfiles-2/.config/zsh/* ~/.config/zsh/
ln -s ~/.config/zsh/.zshrc ~/.zshrc
mkdir ~/.config/shell/
mv ~/dotfiles-2/.config/shell/* ~/.config/shell/
ln -s ~/.config/shell/profile ~/.zprofile
apt-fast install rofi
mv ~/dotfiles-2/.config/rofi ~/.config/
git clone https://github.com/demonkingswarn/myst
cd myst
sudo make install
cd
git clone https://github.com/demonkingswarn/mydmenu
cd mydmenu
apt-fast install dmenu
sudo make install
cd
apt-fast install feh
apt-fast install sxiv
mv ~/dotfiles-2/.config/sxiv ~/.config/
source ~/.zshrc
apt-fast install kitty

