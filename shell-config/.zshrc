# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dev/.zshrc'

# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#exa
alias ls="exa" # ls
alias ll='exa -lbF' # list, size, type, git
alias llm='exa -lbGd --sort=modified' # long list, modified date sort
alias lsa='exa -lbhHigUSa --color-scale' # all list
alias lslx='exa -lbhHigUSa@ --color-scale' # all + extended list
alias lS='exa -1' # one column, just names
alias lt='exa -lbhHigUSa --color-scale --tree --level=2' # tree

#icelab
alias ice="python3 ~/firewall_auth.py"
