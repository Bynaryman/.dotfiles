# Load colors
autoload -U colors && colors
eval "$(dircolors -b ~/.dir_colors)" # Load Manjaro's color scheme

# Show full path once after a directory change, then use contracted path.
autoload -Uz add-zsh-hook
typeset -g _OMP_LAST_PWD=""
typeset -g _OMP_PATH_PHASE=0
function _omp_update_path_prompt() {
  if [[ "$PWD" != "$_OMP_LAST_PWD" ]]; then
    export OMP_PATH_MODE="full"
    _OMP_LAST_PWD="$PWD"
    _OMP_PATH_PHASE=1
  else
    export OMP_PATH_MODE="contracted"
    _OMP_PATH_PHASE=2
  fi
}
add-zsh-hook precmd _omp_update_path_prompt

# Oh My Posh prompt
export PATH="$HOME/.local/bin:$PATH"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/kali-compact.omp.json)"

# Enable prompt substitution
setopt PROMPT_SUBST
export PROMPT_EOL_MARK=""
setopt PROMPT_CR PROMPT_SP


# Optimize history behavior
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=$HOME/.config/zsh/.history
setopt HIST_IGNORE_ALL_DUPS   # Ignore duplicate commands
setopt HIST_FIND_NO_DUPS      # Prevent duplicates when searching history
setopt INC_APPEND_HISTORY     # Immediately append history
setopt SHARE_HISTORY          # Share history across sessions
setopt HIST_REDUCE_BLANKS     # Remove unnecessary spaces

# Enable editing line in VIM-MODE with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

bindkey -s '^o' 'lfcd\n'  # zsh

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# install some plugins for history enchancement
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
# Enable history substring search
bindkey '^[[A' history-substring-search-up   # Up arrow key
bindkey '^[[B' history-substring-search-down # Down arrow key

# fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.config/zsh/fzf-tab-completion/zsh/fzf-zsh-completion.sh
# bindkey '^R' history-incremental-search-backward
bindkey '^R' fzf-history-widget

# suggestions
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


if [[ -r ~/.zprofile ]]; then
  source ~/.zprofile
fi


alias claude="/home/lledoux/.claude/local/claude"
