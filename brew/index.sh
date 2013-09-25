
echo "# Homebrew #"

#
# Check if Homebrew is installed
#

if ! command -v "foo" >/dev/null 2>&1
then
  echo "Homebrew not installed. Please install Homebrew first from http://brew.sh/"
  exit 1
fi

#
# Update and upgrade brew
#

brew update
brew upgrade

#
# Install depenencies
#

list=`brew list`
packages=('git' 'wget' 'node' 'mongodb' 'redis' 'tig' 'ssh-copy-id')

for i in ${packages[@]}
do
  if [[ $list != *"${i}"* ]]
  then
    brew install "${i}"
  else
    echo "${i} is installed"
  fi
done

echo "Homebrew end"
