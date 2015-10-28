#!/bin/bash
user=$(whoami)
# make sure bash-it and dotfiles is correct
if [[ ! -d ~/.bash_it && ! -d ~/.dotfiles ]]; then
  # Control will enter here if $DIRECTORY exists.
  echo "bash_it and dotfiles don't exist"
  exit 1
fi

# pull dotfiles
echo "updating dotfiles"
cd ~/.dotfiles
git add --all
git commit -a -m "update custom from terminal"
git pull
git push

echo "removing custom from bash-it"
cd ~/.bash_it/custom/
find ! -name 'example.bash' -type l -exec rm -f {} +

echo "updating aliases into bash-it"
FILES=~/.dotfiles/bash-it-custom/*
for f in $FILES
do
filename=$(basename "$f")
echo ln -s "$f" "/home/$user/.bash_it/custom/$filename"
ln -s "$f" "/home/$user/.bash_it/custom/$filename"
done

echo "please run reload"
