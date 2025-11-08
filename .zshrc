# Initialize zplug and plugins
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "hlissner/zsh-autopair"  # Auto-close brackets/quotes

zplug "romkatv/powerlevel10k", as:theme, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Manually set your language environment
export LANG=en_US.UTF-8

# The ONLY text editor
export EDITOR=vim;
