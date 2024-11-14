ZSH_THEME="agnoster"
DEFAULT_USER="maximillianeinstein"

source ~/me/dotfiles/zsh/exports.zsh
source ~/me/dotfiles/zsh/aliases.zsh
source ~/me/dotfiles/zsh/functions.zsh
source ~/me/dotfiles/zsh/plugins.zsh
source ~/me/dotfiles/zsh/secrets.zsh

# NVM
source ~/.nvm/nvm.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/meinstein/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/meinstein/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/meinstein/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/meinstein/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
