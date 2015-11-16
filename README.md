# Dotfiles
Useful dotfiles and packages for vim, zsh, and tmux on OSX or *nix

To install correctly, use the following steps to ensure maximum compatibility

1. Clone this to .config-files via 
  - ```git clone https://github.com/chrisarevir/dotfiles ~/.config-files```
2. Create symlinks to the all the config files to keep them in sync with this repo
  - ```ln -sf ~/.config-files/.eslintrc ~/.eslintrc```
  - ```ln -sf ~/.config-files/.gitconfig ~/.gitconfig```
  - ```ln -sf ~/.config-files/.tmux.conf ~/.tmux.conf```
  - ```ln -sf ~/.config-files/ ~/.vim```
  - ```ln -sf ~/.config-files/.vimrc ~/.vimrc```
  - ```ln -sf ~/.config-files/.zshrc ~/.zshrc```
3. Fill out the .gitconfig file with your name and email!

# Todo
- Make automated script to run all the symlink stuff
