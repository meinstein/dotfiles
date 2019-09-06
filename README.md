# Set up

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

### Populate secrets
```
cd zsh && touch secrets.zsh
```