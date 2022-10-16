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

# Search with fzf and open selected file with Vim
# function fe() (
#   IFS=$'\n' files=($(fzf -p80%,80% --multi --select-1 --exit-0 --color=border:green --border --padding 1,5 --margin 1,0 --reverse --preview "bat --color=always --line-range :400 {}"))
#   [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
# )

# c-e
function kc() (
  local kubeconfig=$(ls -A1 ~/.kube/*.yaml | fzf --prompt="kubeconfig > ")
  local namespace=$(kubectl --kubeconfig $kubeconfig get namespaces -o custom-columns=":metadata.name" --no-headers | fzf --prompt="namespace > ")
  local object=$(cat ~/.kube/_helpers/objects | fzf --prompt="get > ")

  echo "kubectl --kubeconfig ${kubeconfig} -n ${namespace} get ${object}"
)

function displayFZFFiles {
  echo $(fzf -p80%,80% --multi --select-1 --exit-0  --color=border:green --border --padding 1,5 --margin 1,0 --reverse --preview "bat --color=always --theme=gruvbox-dark --line-range :400 {}") | tr -d '"'
  #echo $(fzf --multi --select-1 --exit-0  --color=border:green --border --padding 1,5 --margin 1,0 --reverse --preview "bat --color=always --theme=gruvbox-dark --line-range :400 {}") | tr -d '"'
}

function vimGoToFiles {
  vimExists=$(which vim)
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
      eval vim $selection;
  fi;
}

