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

echo
echo
echo "***************************************************************"
echo "*                                                             *"
echo "* run 'sh ~/.vim/compile-command-t.sh' to finish installation *"
echo "*                                                             *"
echo "***************************************************************"
echo

vim +BundleInstall +qall
