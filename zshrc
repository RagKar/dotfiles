# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ragkar/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ragkar/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ragkar/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ragkar/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Config fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Alias
alias g="git"
alias k="kubectl"
alias kns="kubens"
alias ls="ls --color"
alias nv="nvim"

# Export
export GPG_TTY=$(tty)
export EDITOR="/opt/homebrew/bin/nvim"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_NDK="$ANDROID_SDK/ndk"
export ANDROID_NDK_HOME="$ANDROID_NDK/21.4.7075529"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Better completion
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
