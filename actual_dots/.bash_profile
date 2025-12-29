#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
# >>> JVM installed by coursier >>>
export JAVA_HOME="/home/lledoux/.cache/coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.28%252B6/OpenJDK11U-jdk_x64_linux_hotspot_11.0.28_6.tar.gz/jdk-11.0.28+6"
export PATH="$PATH:/home/lledoux/.cache/coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.28%252B6/OpenJDK11U-jdk_x64_linux_hotspot_11.0.28_6.tar.gz/jdk-11.0.28+6/bin"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
export PATH="$PATH:/home/lledoux/.local/share/coursier/bin"
# <<< coursier install directory <<<

