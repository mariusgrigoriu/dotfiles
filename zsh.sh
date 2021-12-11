#!/usr/bin/env sh

# The purpose of this script is to install the earliest pre-reqs
# Run this AFTER bootstrapping dotfiles

# Install oh my zsh
# By default this script executes zsh so it should be the last thing that hapens
# Keep existing zshrc. The one we provide is setup for OMZ and powerlevel10k
RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -s -- --keep-zshrc

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Reload zsh
exec zsh