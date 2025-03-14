# dotfiles

My dot files.

## System dependencies

Tmux config requires `cmake` and a C++ compiler to be installed. (for `tmux-mem-cpu-load`)

bash config requires `man-db` to be installed. (for `manpath` to show npm man pages)

zsh config requires `python-pygments` to be installed. (for `colorize` plugin to show colored output)

[Gogh](https://github.com/Gogh-Co/Gogh), requires `wget`, `dconf` and `util-linux-libs` to be installed.

#### Arch Linux

You can install all of this on Arch Linux with:

```
pacman -S dconf util-linux-libs cmake man-db wget tmux zsh zsh-completions python-pygments
```

Also install oh-my-zsh from [the AUR](https://aur.archlinux.org/packages/oh-my-zsh-git)

#### Debian

On Debian you need to install more packages, but here's a simple one-liner:

```
apt install build-essential cmake man-db python3-pygments wget curl dconf-cli uuid-runtime tmux vim git zsh
```

Then, you have to install `oh-my-zsh` using [the website's shell script](https://ohmyz.sh/#install). Please note that this script installs `oh-my-zsh` at `$HOME/.oh-my-zsh`, which is different from the AUR PKGBUILD, so you have to update .zshrc accordingly (Verify the `$ZSH` var)


## New machine setup

1. copy all dotfiles to `$HOME`
2. Setup Vundle:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
3. Open `vim` and run `:PluginInstall`
4. Setup Tmux Plugin Manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
5. Open tmux and install plugins (`prefix + I`), also reload config (`prefix + R`)
6. Use [Gogh](https://github.com/Gogh-Co/Gogh) to download terminal color palettes
that match your wallpaper. Choose your palette in terminal preferences and adjust
background transparency.
