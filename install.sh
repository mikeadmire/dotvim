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
