# Autohide dock
defaults write com.apple.Dock autohide-delay -float 0
# Hidden apps translucent
defaults write com.apple.Dock showhidden -bool YES
# Shorter Mission control animation
defaults write com.apple.dock expose-animation-duration -float 0.12
# Check for updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Key repeat
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 0
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Column view by default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
# Save screenshots to Downloads
defaults write com.apple.screencapture location -string "~/Downloads"

# atom
apm install sync-settings
