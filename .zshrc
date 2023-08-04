###################
###### Setup ######
###################
setopt vi
. ~/.profile
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt hist_ignore_space
setopt hist_ignore_all_dups

##########################
###### Load plugins ######
##########################
. /usr/share/zsh/scripts/zplug/init.zsh

zplug "olets/zsh-abbr"
zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "supercrabtree/k"

zplug "woefe/wbase.zsh"
zplug "woefe/git-prompt.zsh", use:"{git-prompt.zsh,examples/default.zsh}"
zplug "hlissner/zsh-autopair", defer:2
zplug "joshskidmore/zsh-fzf-history-search"
zplug "laurenkt/zsh-vimto"

zplug "plugins/dirhistory", from:oh-my-zsh, defer:2
zplug "lib/clipboard", from:oh-my-zsh, defer:2

zplug check || zplug install
zplug load

. /usr/share/doc/find-the-command/ftc.zsh noprompt info
. $HOME/.zsh/autoqalc.bash
. /usr/bin/virtualenvwrapper.sh

#######################
###### Keybinds #######
#######################
bindkey '^H' slash-backward-kill-word
bindkey '^[^?' slash-backward-kill-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3;5~" kill-word
bindkey "^[OM" vi-open-line-below
bindkey "^R" fzf_history_search
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search

###### Aliases/Abbreviations ######
alias mpv="env DRI_PRIME=1 RADV_PERFTEST=video_decode vk_radv mpv"
alias ssvim="sudo vim"
alias svim="sudo -e"
alias gclone="git clone"
alias gfa="git fetch --all"
alias gpull="git pull"
alias gpush="git push"
alias gcommit="git commit"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gsu="git submodule update"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias protonupdate="cproton"

alias ainur="ssh ainur"
alias zenon="ssh zenon"

alias status="sudo systemctl status"
alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias restart="sudo systemctl restart"
alias ustatus="systemctl --user status"
alias ustart="systemctl --user start"
alias ustop="systemctl --user stop"
alias urestart="systemctl --user restart"
alias usystemctl="systemctl --user"
alias logs="journalctl -n 100 -f -u"
alias ulogs="journalctl --user -n 100 -f -u"

alias btdu="btrfs filesystem du * -s | sort -h"
alias q="qalc"
alias pacman="sudo pacman"
alias kwinprop="qdbus org.kde.KWin /KWin queryWindowInfo"

# GRML Aliases
alias ...="cd ../.."
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -la"
alias l="ls -CF"
alias lsd="ls -l | grep '^d'"
alias lsf="ls -l | grep -v '^d'"
alias lsh="ls -lh"
alias ls="ls --color=auto"

# InteliJ IDEA Aliases
alias idea="intellij-idea-ultimate-edition"
alias ideaq="idea \$PWD >/dev/null 2>&1 &"

aurclone() { git clone "https://aur.archlinux.org/$1.git"; }
aursshclone() { git clone "ssh://aur@aur.archlinux.org/$1.git"; }
absclone() { git clone "https://gitlab.archlinux.org/archlinux/packaging/packages/$1.git" }


###########################
###### Declare paths ######
###########################
export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export GOPATH=$HOME/Codes/Go
export ANDROID_SDK_ROOT="$HOME/.android-sdk"

# pnpm start
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="$HOME/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="$HOME/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "$HOME/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "$HOME/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="$HOME/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/micromamba/etc/profile.d/conda.sh" ]; then
        . "$HOME/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

