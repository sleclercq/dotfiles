
# antigen
source /usr/local/share/antigen/antigen.zsh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

antigen use oh-my-zsh
antigen bundle git
antigen bundle brew
antigen bundle github
antigen bundle heroku
antigen bundle osx
antigen bundle mvn
antigen bundle gradle
antigen bundle jira
antigen bundle ssh-agent
antigen bundle command-not-found
antigen bundle arialdomartini/oh-my-git
antigen bundle marzocchi/zsh-notify # Notification window for long processes
antigen bundle supercrabtree/k
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions # fish like autosuggestions in grey/black while typing a command. Use right arrow or end to use the suggested command
antigen bundle Tarrasch/zsh-autoenv #ATTENTION VERIFIER SI CA MARCHE Support for enter and leave events, which can use the same file. By default .autoenv.zsh is used for entering, and .autoenv_leave.zsh for leaving.
antigen bundle gko/ssh-connect # ATTENTION VERIFIER SI CA MARCHE #simple ssh manager. It looks for your previous ssh sessions in $HISTFILE and keeps relevant the ones that you reconnect to.
antigen bundle unixorn/autoupdate-antigen.zshplugin #antigen autoupdate
antigen bundle mollifier/cd-gitroot
antigen bundle arc90/git-sweep # ATTENTION VERIFIER SI CA MARCHE cleanups git branches merged to master
# antigen bundle jhipster/jhipster-oh-my-zsh-plugin not used now but just in case
antigen bundle b4b4r07/enhancd # Init script replaces 'cd' command
antigen bundle zsh-users/zsh-syntax-highlighting # Must be the last bundle (kinda)
antigen bundle sharat87/zsh-vim-mode # My masochist side 

#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
antigen theme bhilburn/powerlevel9k powerlevel9k

#antigen list
antigen apply
#antigen list

# Nodejs
export NODE_ENV=development
#export NODE_ENV=production


# Go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gowork
export PATH=$PATH:$GOPATH/bin



export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export MAVEN_OPTS="-Xms512m -Xmx2560m -Xmn256m -XX:MaxPermSize=512m -Xss2m"
export GRADLE_OPTS="-Dorg.gradle.daemon=true -Xmx1500m"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export JAVA_OPTS="-Xmx1024m -Djava.security.egd=file:/dev/./urandom"

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

export PATH=$JAVA_HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export EDITOR=vim

alias pullover="git stash save -u 'for pull' && git pull && git stash pop --index"
alias bu='brew update; brew upgrade; brew cleanup; brew doctor'
alias meteo='curl -4 http://wttr.in/Paris'


# go into tmux
#if [[ "$TERM" != "screen-256color" ]] then
#  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
#  exit
#fi



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Powerline disabled in favour of the (as of 2017-07-03) much more advanced PowerLevel9K
#powerline-daemon -q
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Read Private Environment file if it is present
[ -f ~/dotfiles/private/env.zsh ] && source ~/dotfiles/private/env.zsh


