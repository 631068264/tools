# Path to your oh-my-zsh installation.
export ZSH=/Users/wyx/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

#Android
export ANDROID_HOME=/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
#Gradle
export GRADE_HOME=/Library/Android/gradle-2.12
export PATH=$PATH:$GRADE_HOME/bin

#GO
export GOROOT=/usr/local/go
export GOPATH=/Users/wyx/go_workspace
export GOBIN=$GOROOT/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOPATH

#Python
export VERSIONER_PYTHON_PREFER_32_BIT=yes
#Python版本管理
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

#alias
alias cls="clear"
alias ll="ls -al"
alias vi="vim"
alias rm="rm -i"
#git
alias gs="git status"
alias gd='git diff'
alias ga='git add -A && git status'
alias gm='git commit'
alias gl='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --'
alias grb='git fetch && git rebase origin/develop'
alias gp='git pull --rebase'
alias gc='git checkout'

#sshpass
alias sshpass='/usr/local/bin/sshpass'

#autoevn
source /Users/wyx/.oh-my-zsh/custom/activate.sh

