#
#	.SYNOPSIS
#		This script installs tools for our developers. This script should contain all tools needed for daily work.
#
#	.DESCRIPTION
#		This script installs PowerShell modules for our developers.
#
#	.NOTES
#		  File Name  : developer-tools-mac.sh
#    	Author     : info@xoap.io
#

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew analytics off
brew tap homebrew/cask

# install packages via brew
brew install pre-commit
brew install python
brew install powershell --cask
brew install awscli
brew install azure-cli
brew install terraform
brew install packer
brew install vmware-fusion --cask
brew install visual-studio-code --cask
brew install microsoft-office --cask
brew install microsoft-teams --cask
brew install git
brew install mas
brew install java
brew install gawk
brew install terraform-docs
brew install tflint
brew install tfsec
brew install coreutils
brew install checkov
brew install terrascan
brew install Node
brew install tree
brew install gh
brew install warrensbox/tap/tfswitch

# configure pre-commit
DIR=~/.git-template
git config --global init.templateDir ${DIR}
git config --global core.hooksPath  ${DIR}/hooks
pre-commit init-templatedir -t pre-commit   ${DIR}
pre-commit init-templatedir -t prepare-commit-msg   ${DIR}
pre-commit init-templatedir -t commit-msg ${DIR}

# install ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# deactivate dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock

# Install Xcode
xcode-select --ins
# cleanup
brew doctor
brew update
brew upgrade

# upgrade MacOS
mas upgrade
update MacOS
softwareupdate --all --install --force
