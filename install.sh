date=`date "+%Y%m%d-%H%M%S"`
cd ~

if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim.$date
fi

git clone https://github.com/mikeadmire/dotvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.$date
fi
ln -s ~/.vim/.vimrc ~/

mvim +BundleInstall +qall

echo
echo "***************************************************************"
echo "*                                                             *"
echo "*             !!! Once bundles are installed !!!              *"
echo "*                                                             *"
echo "*    Run the following command to finish the installation.    *"
echo "*                                                             *"
echo "*                sh ~/.vim/compile-command-t.sh               *"
echo "*                                                             *"
echo "***************************************************************"
echo
