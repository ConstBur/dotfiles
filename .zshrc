export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export ZAP_GIT_PREFIX="git@github.com:"
export LANG=en_US.UTF-8
export JAVA_HOME=/opt/android-studio/jbr
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
export VISUAL=nvim
export EDITOR=nvim

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "wintermi/zsh-lsd"
plug "zsh-users/zsh-syntax-highlighting"
plug "embeddedpenguin/sanekeybinds"
plug "chrishrb/zsh-kubectl"

# Load and initialise completion system
autoload -Uz compinit
compinit

plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"
plug "hlissner/zsh-autopair"

eval "$(zoxide init zsh)"
eval "$(/home/constbur/.local/bin/mise activate zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.space.omp.json)"

