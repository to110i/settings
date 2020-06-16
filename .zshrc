# for MacOS

# nodebrew関係
export PATH=$HOME/.nodebrew/current/bin:$PATH

# python関係
# defaultを
export PATH=/usr/local/opt/python/libexec/bin:/Users/{user}/.nodebrew/current/bin:$PATH

# openFrameworks
export PG_OF_PATH="~/Development/openFrameworks"export PATH=$(stack path --local-bin):$PATH

#haskell用の設定
export PATH=~/.local/bin:$PATH
export PATH=$(stack path --compiler-bin):$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#If you need to have ncurses first in your PATH run:
export PATH="/usr/local/opt/ncurses/bin:$PATH"

# For compilers to find ncurses you may need to set:
  export LDFLAGS="-L/usr/local/opt/ncurses/lib"
  export CPPFLAGS="-I/usr/local/opt/ncurses/include"

# For pkg-config to find ncurses you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
  

#以下zshの拡張機能

# 環境変数
export LANG=ja_JP.UTF-8

#プロンプト表示をカレントディレクトリにする
# export PS1="[%~]$ "

#補完機能
autoload -U compinit && compinit

#色を使えるようにする
autoload -Uz colors && colors

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ディレクトリ名だけでcdする
setopt auto_cd

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# もしかして機能 -> 合ってるやつも聞いてくる時あるからうざい
# setopt correct

# promptの色設定
PROMPT='[%F{green}%~%f]$ '

# zsh-completionsの設定
autoload -U compinit
compinit -u

# zsh-syntax-highlitingを有効化
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$PATH:$PYENV_ROOT/versions/anaconda3-2019.10/bin/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/toitoi/.pyenv/versions/anaconda3-2019.10/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/toitoi/.pyenv/versions/anaconda3-2019.10/etc/profile.d/conda.sh" ]; then
        . "/Users/toitoi/.pyenv/versions/anaconda3-2019.10/etc/profile.d/conda.sh"
    else
        export PATH="/Users/toitoi/.pyenv/versions/anaconda3-2019.10/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

