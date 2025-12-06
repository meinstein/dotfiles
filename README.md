# Set up

One core assumption is the existence of a dev directory at `~/me`

### Clone this repo into correct location
```shell
cd ~/me && git clone git@github.com:meinstein/dotfiles.git
```

### Install Homebrew
```shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

###  Install ZSH via Homebrew
```shell
brew install zsh
```

### Install “Oh My ZSH”
```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Add symlink
```shell
# Will need to first delete the .zshrc that gets created during above step
ln -s ~/me/dotfiles/zshrc ~/.zshrc
```

### Install plugins
```shell
brew install zsh-autosuggestions
```

### Install Node (via NVM)
- https://nodejs.org/en/download

### Install Deno
- https://docs.deno.com/runtime/getting_started/installation/

### Populate secrets
```
cd zsh && touch secrets.zsh
```
