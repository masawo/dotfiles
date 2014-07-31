update
upgrade

tap phinze/homebrew-cask || true
install brew-cask

install rbenv ruby-build
install mysql nginx
install libpng openssl git w3m
install wget
install lv
install imagemagick mongodb redis

# http://qiita.com/daxanya1/items/d237eb3dc4f5d8cdad9c
# zshは/etcを参照しないようにする(参考:brew info zsh)
install zsh --disable-etcdir
install fontforge
install reattach-to-user-namespace

# macvimを入れる
tap supermomonga/homebrew-splhack
install --HEAD cmigemo-mk
install --HEAD ctags-objc-ja
install gettext-mk
install --HEAD macvim-kaoriya
linkapps

# Ricty フォント
tap sanemat/font
install ricty
#$ cp -f /PATH/TO/RICTY/fonts/Ricty*.ttf ~/Library/Fonts/
#$ fc-cache -vf

cask install google-chrome
cask install dropbox
cask install iterm2
cask install firefox
#cask install alfred
#cask alfred link
cask install sequel-pro
cask install virtualbox
cask install vagrant
cask install sublime-text3
cask install cyberduck
cask install heroku-toolbelt
cask install Karabiner
cask install kobito

clean
