# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Display colors for directory list
export CLICOLOR=1

# Nodejs
export NODE_ENV=development
#export NODE_ENV=production


# Go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gowork
export PATH=$PATH:$GOPATH/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export JAVA_OPTS="-Xmx1024m -Djava.security.egd=file:/dev/./urandom"

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

# Ensure user-installed binaries take precedence
export PATH=$JAVA_HOME/bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

export EDITOR=vim

alias bu='brew update; brew upgrade; brew cleanup; brew doctor'

# Create a function to use pip3 without a virtualenv when we want to install a package globally
gpip(){
   PIP_REQUIRE_VIRTUALENV="0" pip3 "$@"
}

# go into tmux
#if [[ "$TERM" != "screen-256color" ]] then
#  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
#  exit
#fi

# Read Private Environment file if it is present
[ -f ~/dotfiles/private/env.zsh ] && source ~/dotfiles/private/env.zsh

# Sdkman
export SDKMAN_DIR="/Users/sleclercq/.sdkman"
[[ -s "/Users/sleclercq/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sleclercq/.sdkman/bin/sdkman-init.sh"

export DOCKER_BUILDKIT=1

PATH_MY_AWS_CLI="$HOME/my-aws-cli"
PATH=${PATH_MY_AWS_CLI}/bin:$PATH

fpath=(${PATH_MY_AWS_CLI}/completion/ $fpath)

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

[ -f ${PATH_MY_AWS_CLI}/completion/_my-aws-cli ] && source ${PATH_MY_AWS_CLI}/completion/_my-aws-cli

# Pyenv
eval "$(pyenv init -)"

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit snippet OMZP::common-aliases
zinit snippet OMZP::fzf
zinit snippet OMZP::httpie
zinit snippet OMZP::nvm
zinit snippet OMZP::postgres
zinit snippet OMZP::pipenv
zinit snippet OMZP::pyenv
# zinit snippet OMZP::sdk Doesn't load sdkman automatically
zinit snippet OMZP::virtualenv

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
