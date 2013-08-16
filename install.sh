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

