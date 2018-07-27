# Path to your oh-my-zsh installation.
export ZSH=/Users/wyx/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git kubectl docker osx)

source $ZSH/oh-my-zsh.sh
#source <(kubectl completion zsh)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

#conda
#export PATH=$PATH:/Users/wyx/anaconda2/bin

#Android
export ANDROID_HOME=/Users/wyx/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_NDK=/Users/wyx/Library/Android/ndk

#Gradle
export GRADE_HOME=/Library/Android/gradle-2.14.1
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
eval "$(pyenv init -)"

#Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

#MongoDB
MONGOD_BIN=/usr/local/Cellar/mongodb/3.2.8/bin
export PATH=$PATH:$MONGOD_BIN

#common
alias cls="clear"
alias ll="ls -al"
alias vi="vim"
alias rm="rm -i"
alias wifipsw="security find-generic-password -wa"
#alias fibo_login='ssh -i /Users/wyx/.ssh/key/fibo.pem -p 7700 fibo@$1'
#git
alias gs="git status"
alias gd='git diff'
alias ga='git add -A && git status'
alias gm='git commit'
alias gl='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --'
alias grb='git fetch && git rebase origin/develop'
alias gp='git pull --rebase'
alias gc='git checkout'


#lantern
alias getvpn='/Applications/Lantern.app/Contents/MacOS/lantern -addr=0.0.0.0:8087 &'


#autoevn
source /Users/wyx/.oh-my-zsh/custom/autoenv.sh


#Docker
export DOCKERCLOUD_USER=l631068264
export DOCKERCLOUD_PASS=!QAZXSW@3edc

#mysql
export PATH=$PATH:/usr/local/mysql/bin

alias tesseract='/usr/local/bin/tesseract'

#proxy
alias proxyset='export http_proxy=http://127.0.0.1:8087 https_proxy=http://127.0.0.1:8087'
alias proxyrm='unset http_proxy https_proxy'
