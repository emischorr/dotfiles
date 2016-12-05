#!/bin/bash

# Atom editor settings
echo -n "Copying Atom settings.."
mv -f ~/.atom ~/dotfiles_old/
ln -s $HOME/dotfiles/atom ~/.atom
echo "done"


declare -a FILES_TO_SYMLINK=(

  'shell/aliases'
  'shell/bash_profile'

  'git/gitattributes'
  'git/gitconfig'
  'git/gitignore'

)

# backup existing dotfiles
for i in ${FILES_TO_SYMLINK[@]}; do
  echo "Moving any existing dotfiles from ~ to $dir_backup"
  mv ~/.${i##*/} ~/dotfiles_old/
done
