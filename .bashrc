# environment variables
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export XDG_CONFIG_DIRS="/etc/xdg"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"

# paths
export TERM="xterm-256color"
export EDITOR="emacs"
export CHROME_EXECUTABLE="brave-browser-nightly"
export HOME="/home/bn"
export APPS="$HOME/apps/"
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_STATE_HOME="$HOME/.local/state"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$HOME/go/"
export JAVA_BIN='$HOME/.jdks/openjdk-19.0.2/bin/'
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib
export PATH="$HOME/go/bin/:$PATH"
export PATH="$HOME/.config/composer/vendor/bin/:$PATH"
export PATH="$HOME/.local/share/qlot/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"

# append
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/jvm/default/lib/server

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

SHELLCONFIG="$HOME/.bashrc"
# utilities
alias l='ls --group-directories-first --color=auto'
alias ll='l -l'
alias la='l -lA'
alias cdh='cd $(find /media/Storage/ -maxdepth 4 -type d | fzf) && echo $(pwd) > $LASTWORKSPACE'
alias c='clear'
alias cl='c && pwd && ll'
alias cla='c && pwd && la'
alias t='tree -C --dirsfirst'
alias t1='tree -L 1 -C --dirsfirst'
alias t2='tree -L 2 -C --dirsfirst'
alias th='tree -a -L 1 -C --dirsfirst'
alias th2='tree -a -L 2 -C --dirsfirst'
alias ct='c && pwd && t'
alias ct2='c && pwd && t2'
alias cth='c && pwd && th'
alias cth2='c && pwd && th2'
alias yt='ytfzf -m'
alias ytb='yt "https://youtu.be/D0KMxRMfwxE"'
alias rf='rm -rf'
# alias dvorak='setxkbmap dvorak -option ctrl:swapcaps'
# alias brdvorak='setxkbmap br dvorak -option ctrl:swapcaps'
# alias qwerty='setxkbmap br -option ctrl:swapcaps'

# system
alias lock='i3lock'
alias suspend='systemctl suspend'
alias lockSusp='lock && suspend'

# programs
alias n='nvim'
alias r='ranger'
alias r='ranger'
alias h='hx'
alias nnn='nnn -C'
alias so='source'
alias sosh='source $SHELLCONFIG'
alias shrc='$EDITOR $SHELLCONFIG'
alias btop='bashtop'
alias lab='jupyter-lab'
alias note='jupyter-notebook'
alias py='python3'
alias li='sudo light'
alias mixer='alsamixer'
alias j='$JAVA_BINjava'
alias jc='$JAVA_BINjavac'

# git
alias push='git push origin'
alias add='git add'
alias commit='git commit'
alias stat='git status'
alias diff='git diff'
alias branch='git branch'

# configs
alias rc='$EDITOR ~/.config/awesome/rc.lua'
alias i3conf='$EDITOR ~/.config/i3/config'
alias bsprc='$EDITOR ~/.config/bspwm/bspwmrc ~/.config/sxhkd/sxhkdrc'
alias swayconf='$EDITOR ~/.config/sway/config'
alias quteconf='$EDITOR ~/.config/qutebrowser/config.py'
alias kitconf='$EDITOR ~/.config/kitty/kitty.conf'
alias alconf='$EDITOR ~/.config/alacritty/alacritty.toml'
alias pconf='$EDITOR ~/.config/picom.conf'
alias xconf='$EDITOR ~/.config/X11/Xresources'
alias rofconf='$EDITOR ~/.config/rofi/config.rasi'
alias xso='xrdb ~/.config/X11/Xresources'
alias tmuxconf='$EDITOR ~/.config/tmux/tmux.conf'
alias vconf='$EDITOR ~/.config/nvim/'
alias tmuxso='tmux source $HOME/.config/tmux/tmux.conf'

# tmux
alias tns='tmux new-session -s'
alias ts='tmux-sessionizer'
alias tsk='tmux kill-server'
alias ta='tmux attach'

# other
alias weblsp='npm install -D typescript typescript-language-server vscode-langservers-extracted'

export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[34m\]\W\[\e[m\]\\$ "

# . "$HOME/.asdf/asdf.sh"
# . "$HOME/.asdf/completions/asdf.bash"
