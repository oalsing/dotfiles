# installs most common config files
cd
rm -r .vim .vimrc .tmux.conf .zshrc .gitconfig .weechat/weechat.conf .weechat/irc.conf
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/vim .vim
mkdir .weechat
ln -s dotfiles/weechat.conf .weechat/weechat.conf
ln -s dotfiles/irc.conf .weechat/irc.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
