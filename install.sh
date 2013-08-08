date=`date "+%Y%m%d-%H%M%S"`
cd ~

if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim.$date
fi

git clone https://github.com/mikeadmire/dotvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

for i in .vimrc
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/.vim/$i
done

vim +BundleInstall +qall

# compile C extension for Command-T
# OS X Mountain Lion will need /usr/bin/gcc-4.2. Symlink /usr/bin/gcc to /usr/bin/gcc-4.2.
## ln -s /usr/bin/gcc /usr/bin/gcc-4.2
echo "Compiling Command-T"
cd ~/.vim/bundle/Command-T
rbenv local system
echo "Please provide the root password so I can install any needed rubygems to"
echo "system ruby. (Command-T needs to be compiled against the same ruby as vim)"
sudo bundle install
cd ~/.vim/bundle/Command-T/ruby/command-t
rbenv local system
ruby extconf.rb
make
