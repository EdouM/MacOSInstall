# Autohide dock
defaults write com.apple.Dock autohide -bool TRUE
defaults write com.apple.Dock autohide-delay -float 0
# Hidden apps translucent
defaults write com.apple.Dock showhidden -bool YES
# Shorter Mission control animation
defaults write com.apple.dock expose-animation-duration -float 0.12
# Check for updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Column view by default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
# Save screenshots to Downloads
defaults write com.apple.screencapture location -string "~/Downloads"
# Expand save panel by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# Expand print panel by default.
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
# Disable sound effects when changing volume
defaults write NSGlobalDomain com.apple.sound.beep.feedback -integer 0
# Use a dark menu bar / dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# atom
apm install sync-settings
