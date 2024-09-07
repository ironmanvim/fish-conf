starship init fish | source
set -x DENO_INSTALL /home/tonystark/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

source ~/.asdf/asdf.fish

# Wasmer
export WASMER_DIR="/home/tonystark/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

fish_vi_key_bindings

# My Scripts
bind \cF "~/.local/bin/tmux-sessionizer.sh"
bind \cY "~/.local/bin/ssh-connect.sh"


# opam configuration
source /home/tonystark/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/tonystark/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# go
set -gx GOPATH /home/tonystark/go
set -gx PATH "$GOPATH/bin" $PATH
set -gx PATH /usr/local/go/bin $PATH
# go end

set -gx ANDROID_HOME "$HOME/Android/Sdk"
set -gx PATH "$ANDROID_HOME/emulator" $PATH
set -gx PATH "$ANDROID_HOME/platform-tools" $PATH
