set nocompatible
set number
set expandtab
set tw=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\
filetype off
set nobackup

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))
call neobundle#end()

filetype plugin indent on

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

"git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim
NeoBundle 'Shougo/neobundle.vim'
