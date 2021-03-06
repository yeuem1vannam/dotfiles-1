#  General
#-----------------------------------------------
alias refresh='exec $SHELL -l'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cdk='cd ~/Desktop'

alias ls='ls -G'
alias ll='ls -Gl'
alias la='ls -Ga'
alias lla='ls -Gla'
alias tree='tree -C'
alias df='df -h'
alias tf='tail -f'

alias vi='vim'
alias g='git'
alias ti='titanium'
alias :q='exit'

alias pbc='pbcopy'
alias pbp='pbpaste'

alias peco="peco --rcfile=$HOME/.pecorc"
alias o='git ls-files | peco | xargs open'

alias sha1='echo -n "${1}" | openssl sha1 | sed "s/^.* //"'

alias skey='ssh-keygen -t rsa -P "" -f'
alias randportn='ruby -e "p rand(1024..65535)"'
alias randports='ruby -e "p rand(49152..65535)"'


#  Global
#-----------------------------------------------
alias -g A='| awk'
alias -g C='| cat'
alias -g D='| sed'
alias -g E='> /dev/null 2>&1'
alias -g G='| grep'
alias -g H='| head'
alias -g L='| less'
alias -g N='> /dev/null'
alias -g S='| sort'
alias -g W='| wc'
alias -g X='| xargs'


#  Suffix
#-----------------------------------------------
alias -s coffee='coffee'
alias -s go='go run'
alias -s hs='runhaskell'
alias -s js='node'
alias -s php='php -f'
alias -s py='python'
alias -s rb='ruby'
alias -s swift='xcrun swift'
alias -s txt='cat'

alias -s {gif,jpg,jpeg,png,bmp}='display'

_run_c() {
  local file="$1"
  local out="${1/\.c/}"
  shift

  gcc -o $out $file && $out $@
  # rm -f $out
}
alias -s c='_run_c'

_run_java() {
  className=$1
  className=${className%.java}
  javac $1
  shift
  java $className $@
}
alias -s java='_run_java'


#  Applications
#-----------------------------------------------
alias mvim='open -a MacVim'
alias ff='open -a Firefox'
alias finder='open -a Finder'
alias v='vagrant'
alias an='ansible'
alias anp='ansible-playbook'

alias maxscreen='screenresolution set 2560x1600x32@0'


#  Networks
#-----------------------------------------------
alias hosts='vi /etc/hosts'
alias ip='ipconfig getifaddr en0 || ipconfig getifaddr en1'
alias ipg='dig +short myip.opendns.com @resolver1.opendns.com'
alias whois='whois -h whois-servers.net'

alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""


#  Servers
#-----------------------------------------------
alias pyserver="python -m SimpleHTTPServer"
alias nserver="http-server -p"


#  Scripts
#-----------------------------------------------
alias aart='java -jar ~/dotfiles/lib/jitac.jar'

alias webkit2png='webkit2png -F -d -D ~/Desktop/'
alias webkit2evernote='webkit2png -C -W 1920 -H 1200 --clipwidth=960 --clipheight=600 -s 0.5 -D ~/Desktop/ -d'
alias webkit2blog='webkit2png -C -W 1474 -H 696 --clipwidth=737 --clipheight=348 -s 0.5 -D ~/Desktop/ -d'


#  Ruby / Rails
#-----------------------------------------------
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path=vendor/bundle'

alias ra='bundle exec rails'
alias rg='bundle exec rails g'
alias rgmo='bundle exec rails g model'
alias rgmi='bundle exec rails g migration'

alias rk='bundle exec rake'
alias rkr='bundle exec rake routes'

alias rdbc='bundle exec rake db:create'
alias rdbm='bundle exec rake db:migrate'
alias rdbr='bundle exec rake db:reset'
alias rdbs='bundle exec rake db:setup'
alias rdbf='bundle exec rake db:migrate:reset && bundle exec rake db:seed'

alias rc='bundle exec rails c'
alias rs='bundle exec rails s'
alias rs1='bundle exec rails s -p 3001'
alias rs2='bundle exec rails s -p 3002'
alias rs3='bundle exec rails s -p 3003'
alias rs4='bundle exec rails s -p 3004'
alias rs5='bundle exec rails s -p 3005'


#  Make
#-----------------------------------------------
alias gmake='make'

alias m='make'
alias mi='make install'
alias mc='make clean'


#  tmux
#-----------------------------------------------
alias tm='tmux'
alias tma='tmux attach'
alias tma0='tmux attach -t 0'
alias tma1='tmux attach -t 1'
alias tma2='tmux attach -t 2'
alias tml='tmux list-sessions'


#  Xcode
#-----------------------------------------------
# xcodebuild test -scheme foo -destination 'platform=iOS Simulator,name=iPad' | xcpretty -c
# xctool -scheme foo run-tests -parallelize -sdk iphonesimulator

alias swift='xcrun swift'
alias swiftc='SDKPATH=$(/usr/bin/env xcrun --show-sdk-path --sdk macosx) xcrun swiftc'

alias xcb='xcodebuild'
alias xct='xctool'
