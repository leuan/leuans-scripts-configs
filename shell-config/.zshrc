# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

neofetch --ascii /home/leon/.config/neofetch/ascii.txt | lolcat -F 0.04 -S 30
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DEFAULT_USER="leon"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# XC1 TEST
export XC1_HOME="$HOME"

# Lenovo gitlab
export GLAB_HOST=https://gitlab.icelab.lenovo.com
export GLAB_TOKEN=glpat-raZR7HDy4s29-sbm6L_y

source ~/.config/zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh  

## exa
alias ls="exa" # ls
alias ll='exa -lbF' # list, size, type, git
alias llm='exa -lbGd --sort=modified' # long list, modified date sort
alias lsa='exa -lbhHigUSa --color-scale' # all list
alias lslx='exa -lbhHigUSa@ --color-scale' # all + extended list
alias lS='exa -1' # one column, just names
alias lt='exa --tree --level=2' # tree

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## podman
alias docker="podman"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# # Load Angular CLI autocompletion.
# source <(ng completion script)

# Python path
alias python=/usr/bin/python3

# GHDL path
path+=('/bin/ghdl-mcode')
path+=('/usr/bin/ghdl-mcode')
path+=('/home/leon/.local/bin')


# bun completions
[ -s "/home/leon/.bun/_bun" ] && source "/home/leon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
