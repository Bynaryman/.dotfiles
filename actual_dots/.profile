# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/scripts` to $PATH
export PATH="$PATH:$HOME/.local/scripts"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# ~/ Clean-up:
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export ZDOTDIR="$HOME/.config/zsh"

# >>> JVM installed by coursier >>>
export JAVA_HOME="/home/lledoux/.cache/coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.28%252B6/OpenJDK11U-jdk_x64_linux_hotspot_11.0.28_6.tar.gz/jdk-11.0.28+6"
export PATH="$PATH:/home/lledoux/.cache/coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.28%252B6/OpenJDK11U-jdk_x64_linux_hotspot_11.0.28_6.tar.gz/jdk-11.0.28+6/bin"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
export PATH="$PATH:/home/lledoux/.local/share/coursier/bin"
# <<< coursier install directory <<<
