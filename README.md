# Changes in this fork
Made it to look like the tabline from [vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace), only without the 'X' at the end:
- buffer modification indicator moved between tab number and filename
- removed square brackets around modification indicator 
- no colon before filename

<img src="https://mkitt.net/apple-touch-icon.png" width="80px" height="80px" />

# tabline.vim

Configure tab labels within Terminal Vim with a very succinct output.

![Tabline Screenshot](https://github.com/JagdCake/tabline.vim/blob/master/screenshots/tabline.png)

- Tab number
- \+ if the current buffer has been modified
- Filename (basename only)

Tabs in this case, refer to Vim Tabs and not the Terminal.app tabs.

Based on settings found from [offensive
thinking](http://www.offensivethinking.org/data/dotfiles/vimrc).

## Installation
Using [vim-plug](https://github.com/junegunn/vim-plug), add `Plug 'JagdCake/tabline.vim'`
in your .vimrc or init.vim, then restart vim and run `:PlugInstall tabline.vim`.

## Configuration
Currently there are no configuration variables to define, you either
rock it or you don't. This may change at some point in the future.

Make sure to set the following settings within your color theme: 

```
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
```

To enable the close button in the upper right corner, add the following to your `~/.vimrc`
```
let g:tablineclosebutton=1
```


[mkitt.net][mkitt.net] | [github/mkitt][github]

[github]: https://github.com/mkitt "@mkitt"
[mkitt.net]: https://mkitt.net "🏔"
