# Dotfiles
Useful dotfiles and packages for vim, zsh, and tmux on OSX or *nix

To install correctly, use the following steps to ensure maximum compatibility

1. Clone this to dotfiles via
  - ```git clone https://github.com/chrisarevir/dotfiles.git```
2. Create symlinks to the all the config files to keep them in sync with this repo
  - ```ln -sf ~/dotfiles/.eslintrc ~/.eslintrc && ln -sf ~/dotfiles/.gitconfig ~/.gitconfig && ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf && ln -sf ~/dotfiles/ ~/.vim && ln -sf ~/dotfiles/.vimrc ~/.vimrc && ln -sf ~/dotfiles/.zshrc ~/.zshrc```
3. Fill out the .gitconfig file with your name and email!

# Todo
- Make automated script to run all the symlink stuff
