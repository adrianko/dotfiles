cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile
mkdir ~/.bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/syntax ]; then
    mkdir ~/.vim/syntax
fi

#need to add go.vim here

if [ "$(uname)" == "Darwin" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install scala go ncdu john nmap wget gradle hr
fi
