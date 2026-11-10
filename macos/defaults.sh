# shellcheck shell=bash
# The macOS settings computer applies. Few and boring on purpose: the ones that
# get in the way of work. Sourced by ./computer; safe to run again.

# Finder: show file extensions and the path bar, search the current folder.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Screenshots in their own folder, not on the desktop.
mkdir -p "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

# Typing code: fast key repeat, no smart quotes, dashes or autocorrect.
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Save to disk, not iCloud, by default.
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

killall Finder SystemUIServer >/dev/null 2>&1 || true
