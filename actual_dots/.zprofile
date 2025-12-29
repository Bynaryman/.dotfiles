# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/scripts` to $PATH
export PATH="$PATH:$HOME/.local/scripts"

# custom PATH
export PATH=$PATH:$HOME/Documents/work/postdoc/circt/build/bin/
export PATH=$PATH:$HOME/Documents/work/postdoc/circt/llvm/build/bin/

# Adds latex compile
export PATH=$PATH:$HOME/Documents/opt/latex-compile

# Vivado
export XILINXD_LICENSE_FILE=$HOME/ise_or_vivado_2017.4_license.lic
export PATH=$PATH:/opt/Xilinx/2025.1/Vivado/bin

# env var for circt flopoco mlir
export CIRCT_INSTALL_DIR="$HOME/Documents/work/postdoc/circt/build/"
export LLVM_BUILD_DIR="$HOME/Documents/work/postdoc/circt/llvm/build/"
export LLVM_INSTALL_DIR="$HOME/Documents/work/postdoc/circt/llvm/build/"

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
