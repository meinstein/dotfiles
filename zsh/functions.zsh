# Detect empty enter, execute git status if in git dir
magic-enter() {
        if [[ -z $BUFFER ]]; then
          if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
            echo -ne '\n'
            git status
          fi
          zle accept-line
        else
          zle accept-line
        fi
}
zle -N magic-enter
bindkey "^M" magic-enter

# run `nvm use` when cd'ing into a directory with a .nvmrc file.
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

chpwd_functions+=(enter_directory)
