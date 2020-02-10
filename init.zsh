export TMSU_FZF_ROOT="$0:a:h"
export TMSU_FZF_DONE='<done>'

: "Autoload functions and Create widgets" && () {
  local dir="$TMSU_FZF_ROOT/autoload"
  fpath=($dir/**/*(N-/) $fpath)

  autoload -Uz `ls -F $dir/**/* | grep -v /`

  local w
  for w in `ls $dir/widgets/`; do zle -N $w; done
}

# Support zsh-autosuggestions
if [[ -n ZSH_AUTOSUGGEST_IGNORE_WIDGETS ]]; then
  ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
    $ZSH_AUTOSUGGEST_IGNORE_WIDGETS
    `ls $TMSU_FZF_ROOT/autoload/widgets/`
  )
fi
