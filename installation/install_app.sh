# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/minhhuunguyen/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install htop
brew install htop

# Install rectangle
# https://github.com/rxhanson/Rectangle
brew install --cask rectangle

# Install fonts for terminal
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install zsh/ohmyzsh
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# ZSH_THEME="agnoster" in .zshrc

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install vscode
brew install --cask visual-studio-code

# Install nodejs
brew install npm
npm install --global yarn
