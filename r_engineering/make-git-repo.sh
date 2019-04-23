mkdir .git
cd .git
mkdir -p branches hooks info objects objects/info objects/pack refs refs/heads refs/tags
touch config
touch description
touch HEAD
touch index
touch info/exclude

echo "ref: refs/heads/master" > HEAD
