[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

alias gvim='env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app "$@"'
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias gvim='env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app "$@"'
alias ll='ls -l'
alias gpull='git pull "$@"'
alias gpush='git push "$@"'
alias gitk='gitk 2>/dev/null'

function prompt_command {
    local RETURN_CODE="$?"
    local ASCII_RESET="\[\e[0m\]"
    local ASCII_BOLD="\[\e[1m\]"
    local USER_COLOR="\[\e[1;33m\]"
    local PROMPT_COLOR="\[\e[1;32m\]"
    if [[ ${EUID} == 0 ]] ; then
        PROMPT_COLOR="\[\e[1;31m\]"
    fi
    local HOST_COLOR="\[\e[1;32m\]"
    local DATE_COLOR="\[\e[1;31m\]"
    local TIME_COLOR="\[\e[1;34m\]"
    local DATE_STRING="\$(date +%m/%d)"
    local TIME_STRING="\$(date +%H:%M:%S)"
    local CYAN_COLOR="\[\e[1;36m\]"
    local PINK_COLOR="\[\e[1;35m\]"
    
    local PROMPT_PREFIX="$PROMPT_COLOR"
    if [[ $RETURN_CODE != 0 ]] ; then
        PROMPT_PREFIX="$DATE_COLOR$RETURN_CODE$ASCII_RESET " # do nothing
    fi
    local GIT_STATUS=`git status 2>/dev/null`
    if [[ $GIT_STATUS != "" ]] ; then
        local REFS=$(git symbolic-ref HEAD 2>/dev/null)
        REFS="${REFS#refs/heads/}"
        if [[ `echo $GIT_STATUS | grep "modified:"` != "" ]] ; then
            REFS="$REFS$ASCII_RESET ${PINK_COLOR}modified"
        fi
        if [[ `echo $GIT_STATUS | grep "ahead of"` != "" ]] ; then
            REFS="$REFS$ASCII_RESET ${CYAN_COLOR}not pushed"
        fi 
        PROMPT_PREFIX="$PROMPT_PREFIX$USER_COLOR$REFS$ASCII_RESET "
    fi
    
    
    PS1="$ASCII_BOLD[$USER_COLOR\u $HOST_COLOR\h $DATE_COLOR$DATE_STRING $TIME_COLOR$TIME_STRING $PROMPT_PREFIX$ASCII_RESET\w$ASCII_BOLD]$ASCII_RESET\n$PROMPT_COLOR\\\$$ASCII_RESET "
}
export PROMPT_COMMAND=prompt_command
