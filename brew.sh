# Check available system options
gem install therubyracer -v '0.12.1' -- --with-system-v8

# Install from source
git clone https://github.com/cowboyd/libv8.git
cd libv8
bundle install
bundle exec rake clean build binary
gem install pkg/libv8-3.16.14.3-x86_64-darwin-12.gem #note that libv8 version may change, so tab through files in pkg/, also remember to use the one with version specified

# Get an older version
brew tap homebrew/versions
brew install v8-315

gem install libv8 -v '3.16.14.13' -- --with-system-v8
gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8-315

bundle install

# Search issues page of library

# Install older version
brew info postgresql (or brew switch postgresql <TAB>)
brew search postgresql # check if older version available as tap
