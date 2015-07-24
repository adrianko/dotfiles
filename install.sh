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

curl -o ~/.vim/syntax/go.vim http://www.vim.org/scripts/download_script.php?src_id=11735

if [ "$(uname)" == "Darwin" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install scala go ncdu john nmap wget gradle hr vim
    brew tap caskroom/cask
    brew install brew-cask
    brew cask install java
fi
