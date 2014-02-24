dotfiles
========

## Mac Setting

```shell

# App Storeからxcodeをインストール
# xcode-select --install としてコマンドラインツールをインストール

# system rubyでhomebrewをいれる
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# このリポジトリを ~/dotfiles にclone
git clone git@github.com:masawo/dotfiles.git

# brew caskでインストールするアプリが /Applicationsに入るようにする
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Brewfileからいろいろインストール
brew bundle ~/dotfiles/Brewfile

# rbenv
echo 'if which rbenv > /dev/null; then eval "$(rbenv init 0)"; fl' > ~/.bash_profile
rbenv install 2.0.0-p353 2.1.0
rbenv rehash
rbenv global 2.0.0-p353

```
