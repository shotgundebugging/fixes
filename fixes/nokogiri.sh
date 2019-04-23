# http://www.nokogiri.org/tutorials/installing_nokogiri.html#mac_os_x

### Use 1, 2, 3... incrementally

## 1
# Update Ruby gems
gem update --system

# Xcode Command Line Tools
xcode-select --install

## 2
gem uninstall nokogiri libxml-ruby libxslt

brew update
brew uninstall libxslt
brew uninstall libxml2
brew install libxml2 --with-xml2-config
brew link --force libxml2

brew install libxslt
brew link --force libxslt

bundle config build.nokogiri -- --with-xml2-dir=/usr --with-xslt-dir=/opt/local --with-iconv-dir=/opt/local
bundle install

## 3 - try with xml2 provided by XCode
gem uninstall nokogiri
gem install nokogiri -- --with-xml2-include=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/include/libxml2 --use-system-libraries

## 4
brew unlink xz
gem install nokogiri
