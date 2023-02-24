# A collection of VIM Modules and some config

This is my personal VI setup which I use for most of my daily work

## Requirements
* Vim 8 or higher
* CoC requires nodejs
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
* Some plugins require Environment Variables to be set:
  * coc-nvim requires ```NODEJS != ''```
  * coc-ansible and ansible-vim requires ```ANSIBLE != ''```
* Enjoy your new 'n shiny editor!
