#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install homebrew if it does not exist
if ! hash brew 2>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# brew install coreutils
# ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  # echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  # chsh -s /usr/local/bin/bash;
# fi;

# Install `wget`
# brew install wget

# Install more recent versions of some macOS tools.
# brew install vim
# brew install grep
# brew install openssh
# brew install screen

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Basic dev tools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install go
brew install jq
brew install bazelisk

# Cloud stuff
brew install awscli
brew install terragrunt
brew install ansible

# brew install kubernetes-cli
# brew install kubernetes-helm
# brew install tree
# Remove outdated versions from the cellar.
brew cleanup
