# Enable remote login from Settings -> Sharing
ssh-copy-id -i 10.0.1.17
rsync -avz -e ssh --ignore-existing /Users/mircea mircea@10.0.1.17:/Users/mircea/2xm-retina-2013 --exclude-from=/Users/mircea/exclude.txt

# exclude.txt

.Trash
.bundle
.bundler
.cache
.dropbox
.gem
.npm
.rvm
.vagrant.d
Applications
Dropbox
Google Drive
Music
VirtualBox VMs
purgatory
Library/Caches
Library/iTunes
Library/Mail
Library/Containers
Library/Application Support/Google
Library/Application Support/Firefox
Library/Application Support/OpenOffice
Library/Application Support/Dash
