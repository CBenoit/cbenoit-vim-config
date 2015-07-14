# CBenoit VIM config

I assume that you are under a Unix based system.
Don't hesitate to change anything to fit your needs.

## Installation

Backup your `~/.vim` folder if you want to.

Get this config from github.
`$ git clone https://github.com/CBenoit/vim-config ~/.vim`

Create a symbolic link to ~/.vim/vimrc :
`$ ln -s ~/.vim/vimrc ~/.vimrc`

Plugins managed using Vundle! You can easily install or remove plugins, and they are installed into ~/.vim/bundle/.
See https://github.com/gmarik/vundle for more information.
Everything will automatically be installed at vim first start with this config.
If you want to remove some plugins, do it before launching vim.
You should restart vim after plugins installation.
If gvim isn't appearing, try to run text based vim from terminal.

### Dependencies

You'll need vim 7.4+ compiled with python and ruby support (if you use all plugins in my .vimrc file).
You can check with `vim --version | grep '+python'` and `vim -- version | grep '+ruby'` or you can use vim command mode : `:echo has('python')` and `:echo has('ruby')`.

## BÉPO friendly

This configuration works for BÉPO, QWERTY and AZERTY layouts.
You just have to tell whether you are using BÉPO or not by modifying [isbepo.vim](conf/isbepo.vim) file.
You should add `conf/isbepo.vim` to your `.gitignore` file.
If `isbepo` variable is set to `1`. Then, all keys are remaped to QWERTY while in NORMAL and VISUAL mode.

## Plugins

+ [Ack](https://github.com/mileszs/ack.vim) — Search for pattern in files.
+ [Airline](https://github.com/bling/vim-airline) — A beautiful status bar.
+ [AutoClose](https://github.com/Townk/vim-autoclose) — Automatically close any character that could have a closing counterpart.
+ [ctrlp](https://github.com/kien/ctrlp.vim) — Search for files.
+ [Colorizer](https://github.com/lilydjwg/colorizer) — To colorize text in the form #rrggbb or #rgb.
+ [Cpp Enhanced Highlight](https://github.com/octol/vim-cpp-enhanced-highlight) — Better C++ highlight.
+ [EditorConfig](https://github.com/editorconfig/editorconfig-vim) — Help to define and maintain consistent coding styles.
+ [Fugitive](https://github.com/tpope/vim-fugitive) — An awesome Git wrapper.
+ [LustyExplorer & LustyJuggler](https://github.com/sjbach/lusty) — A fuzzy file and buffer explorer.
+ [Multiple cursors](https://github.com/kristijanhusak/vim-multiple-cursors) — Sublime Text-like multiple cursors feature.
+ [Tabular](https://github.com/godlygeek/tabular) — To align regions of text.
+ [UltiSnips](https://github.com/sirver/ultisnips) — Excellent solution to handle snippets in VIM.
+ [VIM Markdown](https://github.com/plasticboy/vim-markdown) — Support for markdown.
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) — Handle autocompletion.

Colorscheme used :
[Monokai](https://github.com/crusoexia/vim-monokai)

## About Ack

Ack.vim is a frontend for the Perl module [Ack](http://beyondgrep.com/).
You need Ack (>= 2.0) to use the plugin. To install follow the [manual](http://beyondgrep.com/install/).
You may have to change the `g:ackprg` variable in [conf/ack.vim](conf/ack.vim) file (for instance, under Debian, the name is `ack-grep` instead of `ack`).

## About auto-completion

To use YouCompleteMe plugin, you'll need to build a third party program. You should read the doc about it with `:help youcompleteme`.
You may need to install extra dependencies.

Some YouCompleteMe alternatives :
+ [neocomplete](https://github.com/Shougo/neocomplete.vim)
+ [supertab](https://github.com/ervandew/supertab)
+ [clang_complete](https://github.com/Rip-Rip/clang_complete)
+ [python-mode](https://github.com/klen/python-mode)
+ [jedi-vim](https://github.com/davidhalter/jedi-vim)
+ [AutoComplPop](https://github.com/vim-scripts/AutoComplPop)

They may fit your needs or not. Just make your choice and modify the .vimrc file.

## About snippets

This config uses SirVer's UltiSnips to handle snippets.
You can learn more about it with `:help UltiSnips` and by looking at its github page [UltiSnips' readme](https://github.com/sirver/ultisnips).
SirVer made some screencasts very useful to start using it.
Since YouCompleteMe already use "Tab" key, I choose "c-j" (Ctrl + J) as UltiSnips' trigger key.
By the way, YouCompleteMe provides a nice completion menu for UltiSnips.

My .vimrc file comes with tons of snippets from [honza repository](https://github.com/honza/vim-snippets).

## About multiples cursors

In order to go back to regular VIM, you cannot use an "esc" alias ("ii" in my case). You have to use the actual "esc" key.
See `:h multiple-cursors-mappings` for more information.

## Good resources to learn more about VIM editor

+ http://bepo.fr/wiki/Vim : VIM and bépo disposition! [FRENCH]
+ http://vim-fr.org/ : french wiki about VIM. [FRENCH]
+ https://vimebook.com/ : book to start learning how to use VIM. [FRENCH]
+ http://www.vim.org/index.php : official website of course! [ENGLISH]
+ http://vim.wikia.com/ : wiki about VIM. [ENGLISH]
+ http://vim.wikia.com/wiki/Vim_Tips_Wiki : some tips. [ENGLISH]
+ http://vimcasts.org/ : various nice screencasts about VIM. [ENGLISH]

### Inspirations

+ [Fisa VIM config](https://github.com/fisadev/fisa-vim-config)
+ [Axiaoxin VIM config](https://github.com/axiaoxin/vim-settings)
+ [Auto installing Vundle](http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/)
+ [This blog post](http://nvie.com/posts/how-i-boosted-my-vim/)

