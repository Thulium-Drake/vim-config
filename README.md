# A collection of VIM Modules and some config

This is my personal VI setup which I use for most of my daily work

## Requirements
* CoC requires nodejs and npm
* coc-ansible requires ansible-lint and ansible

## Setup

* Clone this repo
```
 git clone https://github.com/Thulium-Drake/vim-config.git ~/vim-config.git
```
* Create some links
```
ln -s ~/vim-config.git/vim ~/.vim
ln -s ~/vim-config.git/vimrc ~/.vimrc
```
* Set up plugins (stick it somewhere in your bashrc to run it at logon)
```
vim +PlugUpdate --sync +qall
```
* If you want to have coc-ansible, run the following in a Vi session:
```
:CocInstall @yaegassy/coc-ansible
```
* Enjoy your new 'n shiny editor!
