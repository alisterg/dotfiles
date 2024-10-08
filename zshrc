# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ================== Added settings ====================
export EDITOR="vim"
export FZF_DEFAULT_COMMAND="rg --files"
export BAT_THEME="base16"
alias vi=vim

alias gs="git status"
alias gfancy="git log --pretty=format:'%C(blue)%ai [%ar] %C(yellow)%h %C(green)%an %C(white)%s %C(magenta)%d' --graph --date-order"
alias gchanged="git log --graph --pretty=\"%C(magenta)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset\" --stat"

export DOTNET_CLI_TELEMETRY_OPTOUT=1

zstyle ':completion:*' use-cache off
# ================== Added settings ====================

. /opt/homebrew/etc/profile.d/z.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Add rbenv to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rbenv/bin"
# Automatically start
eval "$(rbenv init - zsh)"

