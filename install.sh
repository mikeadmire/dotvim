date=`date "+%Y%m%d-%H%M%S"`
cd ~

if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim.$date
fi

git clone git://github.com/mikeadmire/dotvim.git ~/.vim

for i in .gvimrc .vimrc
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/.vim/$i
done

# compile C extension for command-t
# OS X Mountain Lion will need /usr/bin/gcc-4.2. Symlink /usr/bin/gcc to /usr/bin/gcc-4.2.
## ln -s /usr/bin/gcc /usr/bin/gcc-4.2
cd ~/.vim/bundle/command-t/ruby/command-t
rbenv local system
ruby extconf.rb
make
