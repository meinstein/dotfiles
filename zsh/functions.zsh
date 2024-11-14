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

# Does the whole git thing.
# gitit "my commit message"
gitit() {
    git add --all
    git commit -m "$1" --no-verify
    git push origin $(git_current_branch)
}

# run `nvm use` when cd'ing into a directory with a .nvmrc file.
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

chpwd_functions+=(enter_directory)
