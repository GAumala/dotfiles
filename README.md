# dotfiles

My dot files.

## New machine setup

1. copy all dotfiles to `$HOME`
2. Setup Vundle:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
```
3. Open `vim` and run `:PluginInstall`

Please note that `.bashrc` uses `manpath` executable which is provided by [`man-db`](https://archlinux.org/packages/core/x86_64/man-db/).
