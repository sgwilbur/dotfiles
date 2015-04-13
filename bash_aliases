alias github="chrome \`git remote -v | grep github.com | grep fetch | head -1 | field 2 | sed 's/git:/http:/g'\`"

alias gpom="git push origin master"
alias gs="clear && git status"
alias ga="git add"

function wikipedia() {
    if [ "${1}" ]; then dig + short +TXT "${1}".wp.dg.cx; fi
}

alias ds='du -ks *|sort -n'

alias l='ls -lAh --color'

ltree()
{
    tree -C $* | less -R
}

cdl () 
{
    cd $1
    ls
}

lt () {
        ls -ltrh --color $1 | tail -n 15;
}

t() { 
tail -f $1 | perl -pe "s/$2/\e[1;31;43m$&\e[0m/g"
}


alias sulast='su -c $(history -p !-1) root'

# go back x directories
b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}


alias clr='clear;pwd;ls'

alias ll='ls -l --color=auto'

alias grep='grep --color=auto'

findreplace(){
    printf "Search: ${1}\n"
    printf "Replace: ${2}\n"
    printf "In: ${3}\n\n"

    find . -name "*${3}" -type f | xargs perl -pi -e 's/${1}/${2}/g'
}

alias k9='kill -9'

function authme() {
  ssh "$1" 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' \
    < ~/.ssh/id_dsa.pub
}

alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


function mcd() {
  mkdir -p "$1" && cd "$1";
}

alias tm='ps -ef | grep'

alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones

alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

alias gpm="git push origin master"

alias sc="screen -S"
alias sl="screen -ls"
alias sr="screen -r"

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias l.='ls -d .* --color=auto'

alias c='clear'

alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

ft() {

find . -name "$2" -exec grep -il "$1" {} \;
}

alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias halt="halt -p"

