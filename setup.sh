#!/bin/bash

echo "🚀 Starting personalized development environment setup..."

# Install Homebrew
if ! command -v brew &> /dev/null; then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install core packages
echo "📦 Installing essential packages..."
brew install zsh starship openjdk git

# Set Zsh as default shell
echo "🔧 Setting zsh as your default shell..."
chsh -s /bin/zsh

# Link .zshrc
echo "🔗 Linking .zshrc..."
ln -sf $(pwd)/.zshrc ~/.zshrc

# Link Starship config
echo "🔗 Linking Starship config..."
mkdir -p ~/.config
ln -sf $(pwd)/.config/starship.toml ~/.config/starship.toml

# Font info (FiraMono Nerd Font was manually installed)
echo "🔤 Skipping font install — using existing FiraMono Nerd Font from ~/Library/Fonts"
echo "   If needed, download it from https://www.nerdfonts.com/font-downloads"

# Link Zed CLI if installed
if [ -e "/Applications/Zed.app/Contents/MacOS/zed" ]; then
  echo "🔗 Linking Zed CLI to /opt/homebrew/bin/zed..."
  sudo ln -sf /Applications/Zed.app/Contents/MacOS/zed /opt/homebrew/bin/zed
else
  echo "⚠️ Zed.app not found in /Applications. CLI not linked."
fi

# Apply Zed settings
echo "🧠 Setting up Zed config..."
mkdir -p ~/.config/zed
ln -sf $(pwd)/.config/zed/settings.json ~/.config/zed/settings.json

echo "✅ All done!"
echo "💡 Restart your terminal or run: source ~/.zshrc"
