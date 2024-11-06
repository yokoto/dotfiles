Setting of my .vimrc for private.

0. git clone git@github.com:yokoto/dotfiles.git
1. cd dotfiles
2. mkdir ~/.vim
3. git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
4. mv .vimrc ~/.vimrc
5. vim anyfile
6. :NeoBundleInstall # in normal mode
7. mkdir ~/.git
8. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git/git-prompt.sh
9. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git/git-completion.bash
10. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.git/_git
11. mkdir ~/.zsh
12. git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
13. git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

ref.
* http://qiita.com/jnchito/items/5141b3b01bced9f7f48f
* http://qiita.com/luckypool/items/df65dcbea7ab98fa0d49
* https://qiita.com/us10096698/items/e1ec495fb8682c906a81
* https://github.com/Shougo/neobundle.vim?tab=readme-ov-file#if-you-want-to-install-manually-or-you-are-using-windows
* https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
* https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#in-your-zshrc

