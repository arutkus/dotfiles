function terraform_prompt()
{
    if [ -d .terraform ]; then
        workspace="$(command terraform workspace show 2>/dev/null)"
        echo " [${workspace}] "
    fi
}

function gdf() {
  git diff --color | diff-so-fancy | less -r
}

# fuzzy multi-select modified file
function gdff() {
  git ls-files -m -o --exclude-standard | fzf --preview 'git diff {} {} | tail -n +6 | bat -ldiff --color "always"' -m
}

# stage files multi-selected modified files
function gaf() {
 git add $(gdff)
}

# git log browser with FZF
function glf() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

function fali() {
  local foo=$(alias | fzf | sed "s/.*='\(.*\)'/\1/")
  eval $foo
}

function displayFZFFiles {
  echo $(fzf -p80%,80% --multi --select-1 --exit-0  --color=border:green --border --padding 1,5 --margin 1,0 --reverse --preview "bat --color=always --theme=Nord --line-range :400 {}") | tr -d '"'
}

function vimGoToFiles {
  vimExists=$(which nvim)
  if [ -z "$vimExists" ]; then
    return;
  fi;

  selection=$(displayFZFFiles);
  if [ -z "$selection" ]; then
      return;
  else
      if [ "$TERM" != "xterm-256color" ]; then
          TERM="xterm-256color"
      fi
      eval nvim $selection;
  fi;
}

function assume-role() {
  OUT=$(aws sts assume-role --role-arn $1 --role-session-name $2);\
  export AWS_ACCESS_KEY_ID=$(echo $OUT | jq -r '.Credentials''.AccessKeyId');\
  export AWS_SECRET_ACCESS_KEY=$(echo $OUT | jq -r '.Credentials''.SecretAccessKey');\
  export AWS_SESSION_TOKEN=$(echo $OUT | jq -r '.Credentials''.SessionToken');
}
