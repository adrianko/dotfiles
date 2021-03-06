export CLICOLOR=1
export LXCOLORS=ExFxBxDxCxegedabagacad

export PATH=/usr/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/local/bin
#export PATH=$PATH:/usr/local/mysql/bin
#export PATH=$PATH:/Developer/android-dt/sdk/platform-tools
#export PATH=$PATH:/Developer/android-dt/sdk/tools
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export DOCKER_CERT_PATH=/Users/ak/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2375
unset DOCKER_CERT_PATH
unset DOCKER_TLS_VERIFY

fnpyws() { 
	python -m SimpleHTTPServer $1 
}

fnipgeo() {
    curl ipinfo.io/$1 && echo ''
}

fncurlh() {
    curl -i $1 && echo ''
}

fnlisten() {
    while true ; do $2 | nc -l 127.0.0.1 $1 ; done
}

fnproc() {
    ps aux | grep -v grep | egrep "$1"
}

fncatcom() {
    cat $1 | egrep -v '^;|#|^$'
}

alias rmtrash='rm -rf ~/.Trash/*'
alias pyws=fnpyws
alias ccat='pygmentize -g -O tabsize=4,style=colorful,linenos=1'
alias pyprofile='python -m cProfile'
alias ip='curl wtfismyip.com/text'
alias weather='go run /Users/ak/code/bucket/wego/we.go'
alias ipgeo=fnipgeo
alias ts='date -r'
alias showicons='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias hideicons='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias curlh=fncurlh
alias listen=fnlisten
alias mvup='mv * .[^.]* ..'
alias proc=fnproc
alias catcom=fncatcom
alias gitc='git commit -m'
alias gita='git add -p'
alias gitpl='git pull'
alias gitps='git push'
alias dockerc='boot2docker'
