# installs most common config files
cd
rm -r .vim .vimrc .tmux.conf .zshrc .gitconfig
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/vim .vim
