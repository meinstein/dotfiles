ZSH_THEME="jonathan"
DEFAULT_USER="maximillianeinstein"

source ~/me/dotfiles/zsh/exports.zsh
source ~/me/dotfiles/zsh/aliases.zsh
source ~/me/dotfiles/zsh/functions.zsh
source ~/me/dotfiles/zsh/plugins.zsh
source ~/me/dotfiles/zsh/secrets.zsh

# NVM
source ~/.nvm/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/.Downloads/google-cloud-sdk/path.zsh.inc ]; then . ~/.Downloads/google-cloud-sdk/path.zsh.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f ~/.Downloads/google-cloud-sdk/completion.zsh.inc ]; then . ~/.Downloads/google-cloud-sdk/completion.zsh.inc; fi

# Deno
if [ -f ~/.deno/env ]; then . ~/.deno/env; fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
