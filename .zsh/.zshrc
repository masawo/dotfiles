eval "$(anyenv init -)"
if [ -n "$TMUX" ]; then
  alias pbcopy="reattach-to-user-namespace pbcopy"
fi
 [[ -s $HOME/dotfiles/.tmuxinator/scripts/tmuxinator ]] && source $HOME/dotfiles/.tmuxinator/scripts/tmuxinator

