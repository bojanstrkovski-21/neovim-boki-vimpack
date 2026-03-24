#!/bin/bash

# =============================================================================
# Neovim Dependencies Installer for Arch Linux
# =============================================================================

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

info()    { echo -e "${GREEN}[INFO]${NC} $1"; }
warn()    { echo -e "${YELLOW}[WARN]${NC} $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

# =============================================================================
# Check if running on Arch Linux
# =============================================================================
if ! command -v pacman &>/dev/null; then
  error "This script is intended for Arch Linux only."
fi

# =============================================================================
# Neovim (managed by bob)
# =============================================================================

# Remove any existing pacman-managed neovim versions if found
for pkg in neovim neovim-git neovim-bin neovim-nightly-bin; do
  if pacman -Qi "$pkg" &>/dev/null; then
    actual=$(pacman -Qi "$pkg" | grep "^Name" | awk '{print $3}')
    warn "Found $actual, removing it..."
    yay -Rns --noconfirm "$actual"
  fi
done

# Install bob and use it to install nightly neovim
# (switch to: bob install stable && bob use stable once 0.12 stable is released)
if ! command -v bob &>/dev/null; then
  info "Installing bob (Neovim version manager)..."
  sudo pacman -Syy --needed --noconfirm bob
else
  info "bob already installed."
fi

info "Installing Neovim nightly via bob..."
bob install nightly
bob use nightly

# Add bob's nvim-bin to PATH in ~/.bashrc if not already there
BOB_PATH='export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"'
if ! grep -qF 'bob/nvim-bin' "$HOME/.bashrc"; then
  info "Adding bob nvim-bin to PATH in ~/.bashrc..."
  echo "" >> "$HOME/.bashrc"
  echo "# bob (Neovim version manager)" >> "$HOME/.bashrc"
  echo "$BOB_PATH" >> "$HOME/.bashrc"
else
  info "bob nvim-bin PATH already present in ~/.bashrc."
fi

echo ""
echo "  NOTE: To add bob's nvim-bin to PATH in other shells:"
echo ""
echo "  zsh (~/.zshrc):"
echo '    export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"'
echo ""
echo "  fish (~/.config/fish/config.fish):"
echo '    fish_add_path ~/.local/share/bob/nvim-bin'
echo ""

# =============================================================================
# System dependencies via pacman
# =============================================================================
info "Installing system dependencies via pacman..."
sudo pacman -Syy --needed --noconfirm \
  git \
  curl \
  wget \
  unzip \
  tar \
  gzip \
  base-devel \
  fd \
  fzf \
  ripgrep \
  ripgrep-all \
  make \
  cmake \
  python \
  python-pynvim \
  python-pip \
  python-pipx \
  ruby \
  composer \
  nvm \
  tree-sitter \
  rustup \
  go \
  viu \
  chafa \
  lua-jsregexp \
  luarocks \
  luajit \
  julia \
  jdk-openjdk \
  xclip

# =============================================================================
# yay (from chaotic-aur via pacman)
# =============================================================================
if ! command -v yay &>/dev/null; then
  info "Installing yay..."
  sudo pacman -Syy --needed --noconfirm yay
  # If you don't use chaotic-aur, uncomment below instead:
  # git clone https://aur.archlinux.org/yay.git /tmp/yay
  # cd /tmp/yay && makepkg -si --noconfirm
  # cd ~
else
  info "yay already installed."
fi

# =============================================================================
# Rust via rustup
# =============================================================================
info "Installing stable Rust toolchain..."
rustup install stable

# =============================================================================
# NVM + Node.js + npm
# =============================================================================

# Load nvm (installed via pacman from extra repo)
[ -s "/usr/share/nvm/init-nvm.sh" ] && source "/usr/share/nvm/init-nvm.sh"

# Alternatively install nvm via curl (uncomment if not using pacman):
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

info "Installing latest Node.js via nvm..."
nvm install node

info "Updating npm to latest..."
npm install -g npm@latest
npm install -g neovim

# =============================================================================
# ruby neovim
# =============================================================================

gem install neovim

# =============================================================================
# Perl + cpanminus + cpanm neovim
# =============================================================================
sudo pacman -S --needed --noconfirm perl

# System wide
curl -L https://cpanmin.us | perl - --sudo App::cpanminus

# Local User wide
curl -L https://cpanmin.us | perl - App::cpanminus

cpanm -n Neovim::Ext

sudo cpanm -n Neovim::Ext


# =============================================================================
# Done
# =============================================================================
echo ""
info "All dependencies installed successfully!"
echo ""
echo "  NOTE: To use nvm in new terminals, add this to your ~/.bashrc or ~/.zshrc:"
echo "    source /usr/share/nvm/init-nvm.sh"
echo ""
echo "  For fish shell, install fisher and nvm.fish:"
echo "    fisher install jorgebucaran/nvm.fish"
echo ""