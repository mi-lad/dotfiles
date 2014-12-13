link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -f "$to"
  ln -s "$from" "$to"
}

if [[ `uname` == 'Darwin' ]]; then
  link "./sublime/Packages/User/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
elif [[ `uname` == 'Linux' ]]; then
  link 
fi