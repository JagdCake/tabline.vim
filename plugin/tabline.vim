" File:        tabline.vim
" Maintainer:  Matthew Kitt <http://mkitt.net/>
" Description: Configure tabs within Terminal Vim.
" Last Change: 2012-10-21
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
" Based On:    http://www.offensivethinking.org/data/dotfiles/vimrc
" Updates:     Ivo Angelov <jagdcake@tuta.io> 2019-11-18
"              - made tabline look like the tabline from vim-ctrlspace,
"              only without the 'X' at the end

" Bail quickly if the plugin was loaded, disabled or compatible is set
if (exists("g:loaded_tabline_vim") && g:loaded_tabline_vim) || &cp
  finish
endif
let g:loaded_tabline_vim = 1

function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
    let bufname = bufname(bufnr)
    let bufmodified = getbufvar(bufnr, "&mod")
    let modifIndicator = (bufmodified ? ' + ' : ' ')
    
    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab . modifIndicator
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')
  endfor

  let s .= '%#TabLineFill#'
  if (exists("g:tablineclosebutton"))
    let s .= '%=%999XX'
  endif
  return s
endfunction
set tabline=%!Tabline()

