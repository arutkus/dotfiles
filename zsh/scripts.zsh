updatesys() {
    sh $DOTFILES/update.sh
}

extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1      ;;
      *.tar.gz)   tar xzf $1      ;;
      *.bz2)      bunzip2 $1      ;;
      *.rar)      rar x $1        ;;
      *.gz)       gunzip $1       ;;
      *.tar)      tar xf $1       ;;
      *.tbz2)     tar xjf $1      ;;
      *.tgz)      tar xzf $1      ;;
      *.zip)      unzip $1        ;;
      *.Z)        uncompress $1   ;;
      *)          echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

compress() {
    tar cvzf $1.tar.gz $1
}

sshcreate() {
    if [ ! -z "$1" ];
    then
        ssh-keygen -f $HOME/.ssh/$1 -t rsa -N '' -C "$1"
        chmod 700 $HOME/.ssh/$1*
    fi
}

matrix () {
    lines=$(tput lines)
    cols=$(tput cols)

    awkscript='
    {
        letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"
        lines=$1
        random_col=$3
        c=$4
        letter=substr(letters,c,1)
        cols[random_col]=0;
        for (col in cols) {
        line=cols[col];
        cols[col]=cols[col]+1;
        printf "\033[%s;%sH\033[2;32m%s", line, col, letter;
        printf "\033[%s;%sH\033[1;37m%s\033[0;0H", cols[col], col, letter;
        if (cols[col] >= lines) {
            cols[col]=0;
        }
        }
    }
    '

    echo -e "\e[1;40m"
    clear

    while :; do
    echo $lines $cols $(( $RANDOM % $cols)) $(( $RANDOM % 72 ))
    sleep 0.05
    done | awk "$awkscript"
}

phpv() {
  valet stop
  brew unlink php@7.1 php@7.2 php
  brew link --force --overwrite $1
  brew services start $1
  composer global update
  valet install
}

# fuzzy multi-select modified file
gfmod() {
 git ls-files -m -o --exclude-standard | fzf --preview 'git diff {} {} | tail -n +6 | bat -ldiff --color "always"' -m
}

# stage files multi-selected modified files
gfadd() {
 git add $(gfmod)
}

