/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap mongodb/brew

brew install docker
brew install maven
brew install jmeter
brew install node
brew install yarn
brew install python
brew install watchman
brew install kafka
brew install scala
brew install mongodb-community
brew install go
brew install trash
brew install wrk
brew install neovim
brew install protobuf
brew install awscli
brew install redis

#brew cask install font-sourcecodepro-nerd-font
brew cask install font-firacode-nerd-font
brew cask install adoptopenjdk8
brew cask install iterm2
brew cask install docker
brew cask install google-chrome
brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install postman
brew cask install robo-3t
brew cask install mongodb/brew/mongodb-community
brew cask install google-chat
brew cask install dbeaver-community
brew cask install wireshark
brew cask install bloomrpc
brew cask install goland
brew cask install android-studio

brew link --force --overwrite protobuf
