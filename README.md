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

# あとは以下を参考に設定
http://qiita.com/daxanya1/items/d237eb3dc4f5d8cdad9c
```
