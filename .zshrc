################################################################################
# ZSH CONFIG — CLEAN / FAST / MAINTAINABLE
################################################################################

# User binaries (scripts pessoais)
export PATH="$HOME/.local/bin:$PATH"

# ------------------------------------------------------------------------------
# 1. Powerlevel10k Instant Prompt (MUST BE AT THE VERY TOP)
# ------------------------------------------------------------------------------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------------------------------------------------------------
# 2. Oh My Zsh
# ------------------------------------------------------------------------------

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  history
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# ------------------------------------------------------------------------------
# 3. Powerlevel10k config
# ------------------------------------------------------------------------------

[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# ------------------------------------------------------------------------------
# 4. Locale
# ------------------------------------------------------------------------------

export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8

# ------------------------------------------------------------------------------
# 5. User functions
# ------------------------------------------------------------------------------

atual() {
  echo "🔄 Atualizando sistema..."
  sudo pacman -Syu || return 1

  if command -v yay >/dev/null 2>&1; then
    yay -Sua
  else
    echo "⚠ yay não instalado — pulando AUR"
  fi
}

chaves() {
  sudo pacman-key --refresh-keys
  sudo pacman -Syu
}

# ------------------------------------------------------------------------------
# 6. Zsh behavior
# ------------------------------------------------------------------------------

setopt NO_BEEP

# Wayland guards
[[ -n "$WAYLAND_DISPLAY" || -n "$DISPLAY" ]] && export MOZ_ENABLE_WAYLAND=1
[[ -n "$WAYLAND_DISPLAY" ]] && export XDG_SESSION_TYPE=wayland


