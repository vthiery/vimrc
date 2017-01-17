# Vim Setup #
This repository contains my personal vimrc.

## Quick installation ##
Run the *install* script:

```
wget https://github.org/vthiery/vimrc/raw/master/install.sh | sh
```

## Manual installation ##
1) Clone this repository
```
git clone git://github.com/vthiery/vimrc.git
```

2) Fetch the sub-modules via git:

```
git submodule update --init --recursive
```

3) Create the following symbolic links:

```
ln -s "/path/to/vimrc/vimrc" .vimrc
ln -s "/path/to/vimrc/vim" .vim
```

## Modules ##
This configuration uses the following modules:
- [Conque-GDB](https://github.com/vim-scripts/Conque-GDB) - offers CLI interface inside of Vim
- [NerdTree](https://github.com/scrooloose/nerdtree) - allows to explore and open files and directories

## Key Shortcuts ##
The shortcuts I made available so far are:

Shortcut            | Description
--------------------|------------------------
<kbd>Ctrl-B</kbd>   | toggles the side panel for NerdTree

